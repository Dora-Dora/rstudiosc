#' Insert a sepearting line.
#'
#' Call this function as an addin to insert \code{ # --- } at the cursor position.
#'
#' @export
insertComLine <- function() {
  rstudioapi::insertText("# --------------------------------------------------------------------------- ")
}
