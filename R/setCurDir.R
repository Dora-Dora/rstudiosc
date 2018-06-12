#' Set the working directory to be the current file's directory
#'
#' Call this function as an addin with cursor in the current file to change the working directory.
#'
#' @export
setCurDir <- function() {
  curpath <- rstudioapi::getActiveDocumentContext()$path
  dname <- dirname(curpath)
  if (dname != "") {
    print(dname)
    setwd(dname)
  }
  else{
    message("Cursor should be in a file.")
  }
}
