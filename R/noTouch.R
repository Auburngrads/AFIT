#' Extract YAML data from metadata.yml
#'
#' @param file Path to the YAML file
#'
#' @importFrom yaml yaml.load_file
#' 

noTouch <- function(file = NULL) {
  
  yaml <- yaml::yaml.load_file(file)
  
  yaml$author$fullname <- paste(c(yaml$author$firstname,
                                  try(yaml$author$middle),
                                  yaml$author$lastname),
                                collapse = ' ')
  yaml$dept$full <- switch(yaml$de)
  
  return(yaml)
}