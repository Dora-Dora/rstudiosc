#' Print the current file's directory
#'
#' Call this function as an addin with cursor in the current file to print the file's directory.
#'
#' @export
getCurDir <- function() {
  curpath <- rstudioapi::getActiveDocumentContext()$path
  dname <- dirname(curpath)
  if (dname != "") {
    print(dname)
  }
  else {
    message("Cursor should be in a file.")
  }
}
