#' Open AFIT-Specific forms in a browser  
#'
#' @importFrom utils browseURL
#'
#' @param form.name The title of the requested form
#' 
#' @description This function from to complete an AFIT Thesis, the
#' @export


getDocs <- function(form.name = NULL) {

  form.name <- gsub('-', '', form.name)
  form.name <- gsub(' ', '', form.name)
  form.name <- gsub('.', '', form.name)
  
switch(tolower(form.name),
       'styleguide' =, 
       'style' =, 
       'afitstyleguide' =, 
       'guide' = { browseURL('http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf')},
       
       'wpafb1420' =, 
       '1420' =, 
       'wpafbform1420' =, 
       'parequest' =, 
       'parequestform' =,
       'publicaffairs' =,
       'publicaffairsform' =,
       'paform' =,
       'publicaffairsrequest' =,
       'publicaffairsrequestform' =,
       'pa' = { browseURL('http://www.wpafb.af.mil/shared/media/document/AFD-160526-016.pdf') })

}