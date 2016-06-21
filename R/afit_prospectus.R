#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_thesis", package = "AFIT")
#' }
#'
#' @export
afit_thesis <- function(...,
                        keep_tex = TRUE,
                        md_extensions = c("-autolink_bare_uris"),
                        fig_caption = TRUE,
                        toc = TRUE,
                        template = "template.tex",
                        highlight = 'tango',
                        format = "afit_prospectus") {
  
  args <- c('--listings', rmarkdown::pandoc_highlight_args(highlight))
  
  rmarkdown::pdf_document(...,
                          template = system.file("rmarkdown", 
                                                 "templates", 
                                                 format, 
                                                 'resources',
                                                 template,
                                                 package = "AFIT"),
                          fig_caption = fig_caption,
                          keep_tex = keep_tex,
                          toc = toc,
                          pandoc_args = args)
}
