#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "knitr", "readr", "dplyr", "reshape2",
  "here", # for the project's organization
  "tidyverse", "kableExtra", "DataExplorer", "lubridate", "summarytools", #Cleaning and exploring
  "usethis", # git
  "plotly", "GGally", "corrplot", "ggplot2", "ggridges", "ggcorrplot", "patchwork", #for plotting
  "lattice", "FactoMineR", "factoextra", "gridExtra",
  "nnet", "neuralnet", "caret", #Neural networks
  "e1071", #Support Vector Machines
  "naivebayes", #Naive Bayes
  "rpart", "rpart.plot", #Classification Tree
  "ranger", # Random Forest
  "dendextend", "ggdendro", #for dendogram labels
  "DALEX", "DALEXtra" #Creating an explain object
)

purrr::walk(packages, library, character.only = TRUE)

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
 )

