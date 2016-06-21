dtic <- function(access_num = NULL) {
  
  url <- paste(c('http://oai.dtic.mil/oai/oai?verb=getRecord&metadataPrefix=html&identifier',
                  access_num), collapse = '=')
  
}