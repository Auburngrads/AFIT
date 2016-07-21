#' Extract YAML data from metadata.yml
#'
#' @param file Path to the YAML file
#'
#' @importFrom yaml yaml.load_file
#' 

noTouch <- function(file = NULL) {
  
  yaml <- yaml::yaml.load_file(file)
  
  yaml$author$Fullname <- paste(c(yaml$author$firstname,
                                  try(yaml$author$middle),
                                  yaml$author$lastname),
                                collapse = ' ')
  
  yaml$author$fullname <- paste(c(yaml$author$firstname,
                                  yaml$author$lastname),
                                collapse = ' ')
  
  yaml$author$trname  <- paste(c(yaml$author$lastname,
                                 yaml$author$firstname,
                                 yaml$author$middle),
                                collapse = ', ')
  
  yaml$author$dept <- switch(tolower(yaml$author$department),
                             'env' = 'Department of Systems Engineering and Management',
                             'enc' = 'Department of Mathematics and Statistics',
                             'ens' = 'Department of Operational Sciences',
                             'eng' = 'Department of Operational Sciences',
                             'eny' = 'Department of Aeronautics and Astronautics',
                             'enp' = 'Department of Engineering Physics')

  yaml$advisor$dept <- switch(tolower(yaml$advisor$department),
                             'env' = 'Department of Systems Engineering and Management',
                             'enc' = 'Department of Mathematics and Statistics',
                             'ens' = 'Department of Operational Sciences',
                             'eng' = 'Department of Operational Sciences',
                             'eny' = 'Department of Aeronautics and Astronautics',
                             'enp' = 'Department of Engineering Physics')
  
  yaml$dept_head <- switch(tolower(yaml$author$department),
                           'env' = 'Michael R. Grimaila, PhD',
                           'enc' = 'Alan V. Lair, PhD',
                           'ens' = 'Joseph J. Pignatiello, PhD',
                           'eng' = 'Nathaniel J. Davis IV, PhD',
                           'eny' = 'Bradley S. Liebst, PhD',
                           'enp' = 'Nancy C. Giles, PhD')
  
  return(yaml)
}