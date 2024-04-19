# Creating Exploratory Notebooks For Your Dataset
This repository will be used by MSD-LIVE's Jupyter Notebook Services to provide the default notebooks that will be available to a user when they click the "Explore Data" icon on your dataset's landing page.  These notebooks will enable users to visualize, interact with, and/or subset your data for subsequent download.  The following pictures illustrate how a user will interact with these notebooks.

In order to work with MSD-LIVE's Jupyter Notebook services, you will need to configure the following three types of information:

1) README.md - contains instructions for your users
2) requirements.txt - contains the python dependencies for your notebooks
3) notebooks - one or more notebooks that can be used to visualize, explore, and subset your dataset

(Warn – everything will be pulled means if there is lots of data it will take longer to spawn)

The steps for creating these files are provided in the sections below.

## **Step 1:**  Create notebook repository
* Make sure that you have created a new repository in your GitHub organization from the following template repository:  <https://github.com/msdlive/dataset-notebook-template>
* Once created, make sure that you copy the repository URL and paste it into your dataset's upload form on the MSD-LIVE web site.

## **Step 2:** Edit the README.md file
The README.md file contains the instructions your user will see when they first explore your data.  This file should summarize each notebook you provide and explain its purpose. This file should instruct the users to use the terminal to pip install dependencies from the requirements.txt file:
```
pip install -r requirements.txt
```


## **Setp 3:** Edit the requirements.txt file

## **Step 4:** Create your *.ipynb notebook files
* Your dataset's data will be mounted into the notebook at $HOME/data
* All file paths used in the notebook must be relative to $HOME/data
* The $HOME/data folder is READ-ONLY.

# NOTES
To open the README file in preview mode with a direct link from the "Explore Data" link, use this url:
```
https://jupyter.msdlive.org/user-redirect/lab/tree/README.ipynb
```
If you link directly to the README.md file, jupyter will NOT open it with the markdown preview editor.  It will open it with the text editor, and there is no way
to pass a parameter to the URL to tell it which editor to use :(.  So our startup script will create the README.ipynb automatically using the md2nb tool:
```bash
pip install md2nb
md2nb README.md
```
