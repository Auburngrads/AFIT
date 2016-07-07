# URL <- 'https://w95020.eos-intl.net/W95020/OPAC/Search/SimpleSearch.aspx?TaskCode=366184&TitleListPageSize=100&SavedSearch=true'
# 
# stuff <- httr::GET(URL)
# stuff <- httr::content(stuff)
# 
# xml1 <- XML::htmlParse(stuff)
# xml2 <- XML::readHTMLTable(xml1)
# 
# not.null <- list()
# 
# for(i in 1:length(xml2)){
#   
#   if(!is.null(xml2[i][[1]]) && is.data.frame(xml2[i][[1]])) {
#     
#     not.null[[i]] <- data.frame(xml2[i][[1]][complete.cases(xml2[i][[1]]),],
#                                 stringsAsFactors = F)
#   }
#   
# } 
# 
# rms <- which(unlist(lapply(not.null, is.null)))
# not.null <- not.null[-rms]