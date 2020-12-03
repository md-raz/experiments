## Stack Overflow Question Classification
TensorFlow is used to classify questions from stack overflow into four categories: Python, Javascript, C# and Java. The dataset used has had the names of each software replaced with "blank" in each of the actual questions, making correlations more difficult. See the link to the dataset used within the code, stored in the 'url' variable.
## TODO
As of now, there seems to be an issue with the loss and optimization functions, as losses above 1 are calculated. The correct implementations of the loss and optimization functions must be used for multiclass classifications. 
