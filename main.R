library(dplyr)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

source()

outer_dir <- 'ds-pipelines-targets-1'
sbid = '5d925066e4b0c4f70d0d0599' 

data_filepath <- get_data_from_sb(sbid, outer_dir)
data <- process_data_from_sb(data_filepath, outer_dir)
save_model_diagnostics(data, outer_dir)
plot_data_from_sb(data, outer_dir)
