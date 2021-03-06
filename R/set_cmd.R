#' Set a command to executed when running the image
#'
#' @param command a command to be passed to the dockerfile
#' @param dockerfile a dockerfile object
#' @param blank whether to include a blank line at the end of file
#'
#' @return a dockerfile object
#' @export
#'
set_cmd <- function(dockerfile, command, blank = TRUE){
  ret <- c(dockerfile, list('CMD' = command))

  if(blank) ret <- ret %>% insert_blank()

  return(ret)
}
