#   Stack Overflow Question Classifier
#   Author: Md Raz

import matplotlib.pyplot as plt
import os
import re
import shutil
import string
import tensorflow as tf

from tensorflow.keras import layers
from tensorflow.keras import losses
from tensorflow.keras import preprocessing
from tensorflow.keras.layers.experimental.preprocessing import TextVectorization

# -------------------------------- Dataset is downloaded -----------------------------

# Uncomment these if you do not have the dataset downloaded (i.e. if you run the script standalone)
# url = "http://storage.googleapis.com/download.tensorflow.org/data/stack_overflow_16k.tar.gz"
#
# dataset = tf.keras.utils.get_file(
#      "stack_overflow_16k.tar.gz",
#      url,
#      untar=True,
#      cache_dir=".",  # Untar should be true if file is tar'd
#      cache_subdir="",
#      )

# This code assumes this script is running in the same directory as the downloaded datasets.
# dataset_dir = os.path.join(os.path.dirname(dataset),  'dirname')  # Issue here: Missing argument for folder name --> works when empty
dataset_dir = os.path.dirname(dataset)                              # replaced the issue with this code

# ---------------------------------- Dataset is loaded -------------------------------
# Note that the training data is split 80/20 to train and validate (optimize)

batch_size = 32
seed = 42

raw_train_ds = \
    tf.keras.preprocessing.text_dataset_from_directory('train',
        batch_size=batch_size, validation_split=0.2, subset='training',
        seed=seed)

raw_val_ds = tf.keras.preprocessing.text_dataset_from_directory('train'
        , batch_size=batch_size, validation_split=0.2,
        subset='validation', seed=seed)

raw_test_ds = tf.keras.preprocessing.text_dataset_from_directory('test'
        , batch_size=batch_size)

# ----------------------- Loaded data is standardized and preprocessed ----------------

def custom_standardization(input_data):
    lowercase = tf.strings.lower(input_data)
    stripped_html = tf.strings.regex_replace(lowercase, '<br />', ' ')  # Not really necessary, but should standardize case
    return tf.strings.regex_replace(stripped_html, '[%s]'
                                    % re.escape(string.punctuation), '')
                                    
max_features = 10000                                                  # truncate or pad lengths of standard vector
sequence_length = 250

vectorize_layer = TextVectorization(standardize=custom_standardization,
                                    max_tokens=max_features,
                                    output_mode='int',
                                    output_sequence_length=sequence_length)

train_text = raw_train_ds.map(lambda x, y: x)
vectorize_layer.adapt(train_text)

def vectorize_text(text, label):
    text = tf.expand_dims(text, -1)
    return (vectorize_layer(text), label)

train_ds = raw_train_ds.map(vectorize_text)
val_ds = raw_val_ds.map(vectorize_text)
test_ds = raw_test_ds.map(vectorize_text)

# ----------------------------------- Model is trained --------------------------------

embedding_dim = 16
model = tf.keras.Sequential([layers.Embedding(max_features + 1,
                            embedding_dim), layers.Dropout(0.2),
                            layers.GlobalAveragePooling1D(),
                            layers.Dropout(0.2), layers.Dense(4)])    # Model is defined here: Since there are four classifcations, the 
                                                                      # layers.Dense() parameter is set to four.
# model.summary()                                                     # Uncomment if you wish to see model summary

model.compile(loss=losses.SparseCategoricalCrossentropy(from_logits=True),
              optimizer='adam',
              metrics=tf.metrics.BinaryAccuracy(threshold=0.0))       # changed from BinaryCossEntropy

epochs = 10                                                           # Set number of iterations for machine
history = model.fit(train_ds, validation_data=val_ds, epochs=epochs)


# ----------------------------------- Model is evaluated --------------------------------

(loss, accuracy) = model.evaluate(test_ds)

print ('Loss: ', loss)
print ('Accuracy: ', accuracy)

export_model = tf.keras.Sequential([vectorize_layer, model,
                                   layers.Activation('sigmoid')])

export_model.compile(loss=losses.SparseCategoricalCrossentropy(from_logits=False),
                     optimizer='adam', metrics=['accuracy'])

(loss, accuracy) = export_model.evaluate(raw_test_ds)
print (accuracy)
