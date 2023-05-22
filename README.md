
# Predicting Marital Status with NLSY97 Data
  
 
  
## Summary

My final project examines the Bureau of Labor Statistics’ National Longitudinal Study of Youth for 1997. This huge data set that has about 60,000 variables
and follows a group of about 9,000 teens from 1997 until the present day.

The data is available at the link below for any researcher to select the variables of interest. You will need to set up an account to access the data directly.

https://www.nlsinfo.org/investigator/

The website has a detailed codebook that was very helpful as I was trying to understand variable definitions and check my calculations.

If you want to look at a higher level. This part of the website gives a guide to some of the variables available.

https://nlsinfo.org/content/cohorts/nlsy97/topical-guide/



## Video Link

[Start by watching the video summarizing this project](https://youtu.be/h079-Gj_3aM)



## Folder Structure 

The folder contains several files and a folder:

* README.md - This readme file with brief overview and instructions
* FinalProject.Rproj - This is the project to 
* FinalProject_DataCleaning (.Rmd & .html) - Markdown and html files will all the data cleaning steps and output
* FinalProject_EDA (.Rmd & .html) - Markdown and html files will the exploratory data analysis
* FinalProject_Models (.Rmd & .html) - Markdown and html files will model building
* The folder "Data" contains several files and folders:
    * The Folder: "Extract1" contains:
        * MIS5470v2.csv - Main data extract of variable (Downloaded from nlsy.org)
        * MIS5470v2.R - A R script file provided with the data to add variable names and categorical factors if desired and save as RDS file
    * The Folder: "Extract2" contains:
        * Marriage_Bonus.csv - Extra data to add end of first marriage variable (Downloaded from nlsy.org)
        * Marriage_Bonus.R - A R script file provided with the data to add variable names and categorical factors if desired to csv file and save as RDS file.
    * The Folder "Images" contains:
        * originaldatasize.png - Shows the size of total data file (referenced in Data Cleaning html)
        * rawdataCSV.png - Shows the original output of MIS5470v2.csv (referenced in Data Cleaning html)
    * The Folder: "Zipped Files" contains:
        * MIS5470v2.zip - Extract with alternative data types
        * Marriage_Bonus.zip - Extract with alterative data types
    * varnames.csv - Extract of original variable names used as a reference when cleaning data
    * mynotes.xlsx - This file contains notes for cleaning the data
    * new_data.Rds - This is the output from the MIS5470.R data. It includes all the variables with variable names.
    * divorce.Rds - This is the output from the Marriage_Bonus.R data. It includes the new  divorce variable and five ID variables for matching with variable names.
    * clean_nlsy97.Rds - This is the output from FinalProject_DataCleaning.Rmd that is used in the FinalProject_EDA.Rmd file
    * clean2_nlsy97.Rds - This is the output from FinalProject_EDA.Rmd that is used in the FinalProject_Models.Rmd file
    
  
  
## Instructions

* Download the zip file  
* Extract the files
    * There is no need to extract the files from the Zipped Files folders. They are just illustrative.
* Open FinalProject.Rproj
    * This will ensure you start in the correct working directory
* Optional Steps: (The provided scripts output is in Rds files, so you can skip this step)
    * Go to Data/Extract1/MIS5470v2.R
        * Open the file and run all lines
    * Go to Data/Extract2/Marriage_Bonus.R
        * Open the file and run all lines
* Open FinalProject_DataCleaning (.Rmd or .html)
    * If you are in the .html file there is a hyperlink at the end to the next document. If not, select the next .Rmd file in the folder
        * Order:
            * Data Cleaning
            * EDA
            * Models
    * You must run the .Rmd files from top to bottom, or they will not work. Many chucks cannot be run a second time without first rerunning all chunk above



## Conclusion
  
I spent a significant amount of time researching the data, understanding its formatting, and getting it into a usable format. My projects focus on Rstudio and how its tools
can allow me to perform steps in batch. This project improved my understanding of referencing lists, debugging, and string work. I not only gained a better understanding of
the NLSY data, but also gained a programmatic mindset for problems. I hope the amount of work and accomplishment is reflected in these documents.  

Thank you!
