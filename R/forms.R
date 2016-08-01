#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param fig_caption Should figure captions be enabled?
#' @param toc Should a table of contents be created?
#' @param template The TeX template used
#' @param format The format of the document
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
public_affairs <- function(...,
                           keep_tex = FALSE,
                            md_extensions = c("-autolink_bare_uris"),
                            fig_caption = FALSE,
                            toc = FALSE,
                            template = "PAform.tex",
                            format = "afit_prospectus") {
  
   rmarkdown::pdf_document(...,
                           template = system.file("rmd", 
                                                  "tex", 
                                                  template,
                                                  package = "AFIT"),
                           fig_caption = fig_caption,
                           keep_tex = keep_tex,
                           toc = toc,
                           pandoc_args = c('--listings'))
}

#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
distro_form <- function(...,
                        keep_tex = FALSE,
                        md_extensions = c("-autolink_bare_uris"),
                        template = "distroForm.tex") {
  
rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
sf298 <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "sf298.tex") {
  
rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
signature_form <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "signatureForm.tex") {
  
   rmarkdown::pdf_document(...,
                           template = system.file("rmd", 
                                                  "tex", 
                                                  template,
                                                  package = "AFIT"),
                           keep_tex = keep_tex,
                           pandoc_args = c('--listings'))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
training_report <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "trainingReport.tex") {
  
    rmarkdown::pdf_document(...,
                            template = system.file("rmd", 
                                                   "tex", 
                                                   template,
                                                   package = "AFIT"),
                            keep_tex = keep_tex,
                            pandoc_args = c('--listings'))
}


#'
#'
#'
#'

makeForms <- function(yml = NULL,...) {
  
  forms <- system.file('rmd','forms', package = 'AFIT')
  forms <- list.files(forms)
  
  
}