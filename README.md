## Introduction
The goal ... is to determine whether we can accurately predict the fatigue of 
- .. list the questions here
- q2
- q3
- q4

## Setup
**IMPORTANT:** A Python virtual environment is highly recommended. You can learn how to create a virtual environment [here](https://docs.python.org/3/library/venv.html). Different operating systems have different ways of creating virtual environments.

This project uses `Python 3.9.12` (download [here](https://www.python.org/downloads/release/python-3912/)). To run the notebook files in this project, you will need to install `pycaret`. To do this, run the command below in your terminal:
~~~
pip install pycaret[full]
~~~
Once it is done downloading, you should be able to run all of the Jupyter Notebook files (extension `.ipynb`) without issue.

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
├─ 📄setup.ipynb
~~~

If any of these files are missing, please download them from the GitHub repository. If any of the directories are missing, please add them as shown above.


## Files and Notebooks

*brief summary of purpose of csv and notebook files*

Each notebook will contain additional details about its functionality.


## File Execution Order:
There is a recommended order in which to run the files to make sure that everything works as intended. This is listed below in steps:

Repurpose descriptions from here to [Files and Notebooks](#files-and-notebooks)?

1. Run the `save_models_general.ipynb` and `save_models_individual.ipynb` files. This will generate the general and indivdual prediction models and their accuracy results, and save them in CSV files in the directory `outputs/general/`. The files generated are called `cv_models_general.csv` and `cv_test_general.csv`, which store the models and their accuracy results respectively.

2. Run the `model_importance.ipynb` file. This will generate the data of the feature importance for all of the models, for both general and individual. It will store them in the directories `outputs/general` (for the general models) and `outputs/individual` (for the individual models). The CSV files they are stored in are called `sensor_feature_importance_general.ipynb` and `sensor_feature_importance_individual.ipynb`. 

3. Run the `sensor_general.ipynb` and `sensor_individual.ipynb` files. This will generate the general and indivdual prediction models and their accuracy results, but based on data divided by sensor. The data will be stored in files called `sensor_models_general.ipynb` and `sensor_models_individual.ipynb`, in the directory `outputs/general` and `outputs/individual`. 

4. The `analysis.ipynb` file contains many sections that analyze different aspects of the data generated from the previous files. ELABORATE ON analysis...

If certain csv files exist...
