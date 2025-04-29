
# DATA CULTURE : 

#iris datasets (classification tasks /algorithms)
#Titanic (regression models)
#mtcars  (visualisation)

# Titanic dataset -----

# extract the Titanic dataset from R
#The Titanic dataset is included in R as part of the titanic package, which contains data from the infamous Titanic disaster. Here's how you can extract and load the dataset:
#Step 1: Install the titanic package

#First, ensure the titanic package is installed. If it’s not installed, you can do so by running:
install.packages("titanic")

#Step 2: Load the titanic package
#After installing the package, load it:
library(titanic)

#Step 3: Load the Titanic dataset
#The dataset is available as a preprocessed version (titanic_train), which can be loaded directly:
data("titanic_train")


#Step 4: View the dataset
#To view the dataset, you can use the following commands:

# View the first few rows
head(titanic_train)

# View the structure of the dataset
str(titanic_train)

# Summary statistics
summary(titanic_train)



# IRIS dataset


#IRIS classifications
<https://www.rpubs.com/Aakansha_garg/261616>



# SESSION 2 data culture


## THE MACRO APPROACH ------------

## FINDING THE PROPER PACKAGE
# CRAN : task views
# Github
{devtools}
{remotes}
citation()


# Identifying the package content
# functions

# datasets

# packages



# Documentation ----------

# ?function
# R package documentation

# Vignettes

# internal documentation

# external documentation : The R Journal, DH papers



# THE MICRO APPROACH --------


# rm(list=ls()) # destroys the objects in the environment
?rm # get information about the function rm()


?read.csv
?read.csv2


# File naming strategies ----
# File_naming.R
# FileNaming.R
# comment

library(readr)
VideosdurPronunciationWithEmma <- read_delim("VideosdurPronunciationWithEmma.csv", 
delim = ";", col_names = c("VideoTitle", "YT_URLcode", "duration"), escape_double = FALSE, trim_ws = TRUE)

# to select your file navigating your hard drive 
VideosdurPronunciationWithEmma <- read_delim(file.choose(), 
delim = ";", col_names = c("VideoTitle", "YT_URLcode", "duration"), escape_double = FALSE, trim_ws = TRUE)

View(VideosdurPronunciationWithEmma)

dt <- VideosdurPronunciationWithEmma


# Dataset
str(dt)
summary(dt)
class(dt$duration)
mean(dt$duration)
min(dt$duration)
which.max(dt$duration)
dt$VideoTitle[1]

# Data structure / variable types
# subset
# save object
# Data wrangling 
{tidyverse}
{broom}


# Filter rows where the 'duration' column is less than 60
filtered_data <- dt[dt$duration < 60, ]

library(dplyr)
# Filter rows where 'duration' is less than 60
filtered_data2 <- dt %>% filter(duration < 60)

identical(filtered_data,filtered_data2)
class(identical(filtered_data,filtered_data2))

getwd() # where am I? the directory where R saves files 
setwd("~/Desktop") # assigns my desktop as the working directory
getwd() # confirms the working directory

# Save filtered_data as a CSV file with semicolon as the separator
write.csv2(X, file = "X.csv", row.names = FALSE)

# to be tested
write_delim(filtered_data, "filtered_data.tsv", delim = "\t")

# see also write_csv()

# specifying another path to save your objects?


# Saving environment 
save.image("~/Desktop/test.RData")

# rm(list=ls())

# Load the .RData file
load("~/Desktop/test.RData")

# Verify the objects loaded into your environment
ls()


