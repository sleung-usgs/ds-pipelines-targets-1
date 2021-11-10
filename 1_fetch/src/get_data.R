# Get the data from ScienceBase
get_data_from_sb <- function(sbid, outer_dir){
  data_filepath <- file.path(outer_dir, '1_fetch', 'out', 'model_RMSEs.csv')
  item_file_download(sbid, names = 'me_RMSE.csv', destinations = data_filepath, overwrite_file = TRUE)
  
  return(data_filepath)
}
