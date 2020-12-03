# Experiments

Repository for experimental code

See each Folder for corresponding experimental code and documentation.


Enter the python virtual environment [in windows] by entering the following in the command prompt, where <ENV_NAME> is replaced for by the VEnv name for this specific project.

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
		
		
