library(dplyr)
library(miceadds)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

outer_dir <- 'C:/Users/SLEUNG/Github/ds-pipelines-targets-1'

print('source the following files:')
for (dir in list('1_fetch', '2_process', '3_visualize')) {
  setwd(file.path(outer_dir, dir, 'src'))
  src_files = list.files(pattern='\\.R$')
  print(paste('in ', getwd(), ': ', sep=""))
  print(src_files)
  sapply(src_files, source)
}

setwd(outer_dir)

sbid = '5d925066e4b0c4f70d0d0599' 

data_filepath <- get_data_from_sb(sbid, outer_dir)
data <- process_data_from_sb(data_filepath, outer_dir)
save_model_diagnostics(data, outer_dir)
create_rmse_plot(data, outer_dir)
