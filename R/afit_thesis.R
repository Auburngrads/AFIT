#' Air Force Institute of Technology (AFIT) Thesis format.
#'
#' Format for creating AFIT Theses.
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
#' draft("MyArticle.Rmd", template = "afit_thesis", package = "AFIT")
#' }
#'
#' @export
afit_thesis <- function(...) {
  pdf_document_format(...,
                      format = "afit_thesis",
                      template = "template.tex",
                      csl = "acm-sig-proceedings.csl")
}

