## Introduction
The goal ... is to determine whether we can accurately predict the fatigue of 
- .. list the questions here
- q2
- q3
- q4

## Setup
**IMPORTANT:** A Python virtual environment is highly recommended. You can learn how to create a virtual environment [here](https://docs.python.org/3/library/venv.html). Different operating systems have different methods necessary to create a virtual environment.

This project uses `Python 3.9.12` (download [here](https://www.python.org/downloads/release/python-3912/)). To run the notebook files in this project, you will need to install `pycaret`. To do this, run the command below in your terminal:
~~~
pip install pycaret[full]
~~~
Once it is done downloading, you should be able to run all of the Jupyter Notebook files without issue.

## Project Directory Structure:
The data that is used to generate all of the results is stored in the `data/` directory. The file that is used is `initial_features_mod.csv`. This file is a modified version of the `initial_features.csv` file, with additional rows to make model generation simpler. The resulting data generated from the code is stored under the `outputs/` directory and its subdirectories.

### The directory tree should look as follows:
~~~
📁shoulder_fatigue_modeling/
├─ 📁data/
│  ├─ 📃initial_features_mod.csv
│  ├─ 📃initial_features.csv
├─ 📁outputs/
│  ├─ 📁general/
│  ├─ 📁individual/
│  ├─ 📁summary/
├─ 📜.gitignore
├─ 📄analysis.ipynb
├─ 📄individual_vs_general.ipynb
├─ 📙README.md
├─ 📄save_models_general.ipynb
├─ 📄save_models_individual.ipynb
├─ 📄save_sensors_general.ipynb
├─ 📄save_sensors_individual.ipynb
~~~

If any of these files are missing, please download them from the GitHub repository. If any of the directories are missing, please add them as shown above.


## Notebooks
The information below is a brief summary of what each notebook does. Each notebook will contain inside it additional details about its functionality.

### save_models_general.ipynb
The `save_models_general.ipynb` notebook generates the general training and testing models, and saves them in CSV files in the directory `outputs/general/`. The files generated are called `train_general.csv` and `test_general.csv`, which store the training models and testing models, respectively. 

The generation of the models will also provide feature importance data for all of the training models. The feature importance data will also be stored in the `outputs/general/` directory. The CSV file the feature importance data is stored in is `feature_importance_general.ipynb`. 

### save_models_individual.ipynb
The `save_models_individual.ipynb` notebook generates the individual training and testing models, and saves them in CSV files in the directory `outputs/individual/`. The files generated are called `train_individual.csv` and `test_individual.csv`, which store the training models and testing models, respectively. 

The generation of the models will also provide feature importance data for all of the training models. The feature importance data will also be stored in the `outputs/individual/` directory. The CSV file the feature importance data is stored in is `feature_importance_individual.ipynb`. 

### save_sensors_general.ipynb
The `save_sensors_general.ipynb` notebook generates the general training and testing models, and saves them in CSV files in the directory `outputs/general/`. This notebook generates models by dividing features by sensor and generating a separate model for each sensor. The files generated are called `sensor_train_general.csv` and `sensor_test_general.csv`, which store the training models and testing models, respectively. 

The generation of the models will also provide feature importance data for all of the training models. The feature importance data will also be stored in the `outputs/general/` directory. The CSV file the feature importance data is stored in is `sensor_feature_importance_general.ipynb`.

### save_sensors_individual.ipynb
The `save_sensors_individual.ipynb` notebook generates the individual training and testing models, and saves them in CSV files in the directory `outputs/individual/`. This notebook generates models by dividing features by sensor and generating a separate model for each sensor. The files generated are called `sensor_train_individual.csv` and `sensor_test_individual.csv`, which store the training models and testing models, respectively. 

The generation of the models will also provide feature importance data for all of the training models. The feature importance data will also be stored in the `outputs/individual/` directory. The CSV file the feature importance data is stored in is `sensor_feature_importance_individual.ipynb`.

The `analysis.ipynb` file contains many sections that analyze different aspects of the generated models. 

### individual_vs_general.ipynb


### analysis.ipynb



## File Execution Order:
There is a recommended order in which to run the files to make sure that everything works as intended. This is listed below in steps:

Repurpose descriptions from here to [Files and Notebooks](#files-and-notebooks)?

1. Run the `save_models_general.ipynb` and `save_models_individual.ipynb` files.

3. Run the `save_sensors_general.ipynb` and `save_sensors_individual.ipynb` files.

4. Run the `analysis.ipynb` file.

If the `general/`, `individual/` and `summary/` folders already contain the necessary CSV files, it is not necessary to run the `save_models_general.ipynb`, `save_models_individual.ipynb`, `save_sensors_general.ipynb` and `save_sensors_individual.ipynb` files unless you want to regenerate the models.

These files are likely already provided because it can between several hours and a few days to run the model generation notebooks depending on your machine.
