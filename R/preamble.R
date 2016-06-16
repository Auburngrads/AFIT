#' Air Force Institute of Technology Preamble 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyThesis.Rmd", template = "preamble", package = "AFIT")
#' }
#'
#' @export
preamble <- function(...,
                     keep_tex = TRUE,
                     md_extensions = c("-autolink_bare_uris"),
                     fig_caption = TRUE) {
  
  pdf_document_format(...,
                      format = "preamble",
                      template = "template.tex",
                      fig_caption = fig_caption,
                      keep_tex = keep_tex,
                      sty = 'afitThesis.sty')
}

