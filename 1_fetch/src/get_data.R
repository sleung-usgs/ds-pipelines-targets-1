# Get the data from ScienceBase
download_data <- function(out_filepath) {
  sbid <- "5d925066e4b0c4f70d0d0599"
  item_file_download(sbid, names = "me_RMSE.csv", destinations = out_filepath, overwrite_file = TRUE)

  return(out_filepath)
}
