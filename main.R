library(dplyr)
library(miceadds)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

# REQUIREMENT: working dir must be same as dir where main.R is located
outer_dir <- getwd()

src_files <- Sys.glob('*/src/*.R')
for (f in src_files) {
  print(paste("sourcing", f))
  source(f)
}

sbid <- '5d925066e4b0c4f70d0d0599' 

data_filepath <- get_data_from_sb(sbid, outer_dir)
data <- process_data_from_sb(data_filepath, outer_dir)
save_model_diagnostics(data, outer_dir)
create_rmse_plot(data, outer_dir)
