Disclaimer: THE SAMPLE CODE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.

# Tensorflow Experiments Repo

## Installing TensorFlow / Entering VEnv

Follow the TensorFlow install tutorial found at https://www.tensorflow.org/install/pip

This guide assumes you are using the windows x64 version. Some code may vary depending on your system.

Entering the python virtual environment (venv) req. Python 3.5-3.8 and venv >= 19.0. Package installations in the virutal environment do not affect the packages installed on your system. 
Check your version number by entering <code>python3 --version</code> into command prompt if in windows. 

Enter the virtual environment [in windows] by entering the following in the command prompt, where <ENV_NAME> is replaced for by the VEnv name for this specific project.

    python -m venv --system-site-packages .\<ENV_NAME>
		
		.\<ENV_NAME>\Scripts\activate
		
You will need to install packages per environment.
		
		pip install --upgrade pip

		pip list  # show packages installed within the virtual environment

Next, install the packages required for TensorFlow. The installation packages and commands are different for systemwide vs VEnv installs. 

VEnv Install:

		pip install --upgrade tensorflow
		
		python -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
		
Systemwide Install

		pip3 install --user --upgrade tensorflow  # install in $HOME
		
		python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
		
		
		
		
		
		
