#' Air Force Institute of Technology Preamble 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#' \href{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}{http://www.afit.edu/docs/NewAFITStyleGuideJuly2015(2).pdf}
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
                     fig_caption = TRUE,
                     toc = TRUE) {
  
  pdf_document_format(...,
                      format = "preamble",
                      template = "template.tex",
                      fig_caption = fig_caption,
                      keep_tex = keep_tex,
                      toc = toc)
  
#   base <- inherit_pdf_document(..., template = 'template.tex', keep_tex = keep_tex)
# 
#   # Mostly copied from knitr::render_sweave
#   base$knitr$opts_knit$out.format <- "sweave"
# 
#   base$knitr$opts_chunk$prompt <- TRUE
#   base$knitr$opts_chunk$comment <- NA
#   base$knitr$opts_chunk$highlight <- FALSE
# 
#   base$knitr$opts_chunk$dev.args <- list(pointsize = 11)
#   base$knitr$opts_chunk$fig.width <- 4.9 # 6.125" * 0.8, as in template
#   base$knitr$opts_chunk$fig.height <- 3.675 # 4.9 * 3:4
#   base$knitr$opts_chunk$fig.align <- "center"
# 
#   hook_chunk <- function(x, options) {
#     if (output_asis(x, options)) return(x)
#     paste0('\\begin{CodeChunk}\n', x, '\\end{CodeChunk}')
#   }
#   hook_input <- function(x, options) {
#     paste0(c('\\begin{CodeInput}', x, '\\end{CodeInput}', ''),
#       collapse = '\n')
#   }
#   hook_output <- function(x, options) {
#     paste0('\\begin{CodeOutput}\n', x, '\\end{CodeOutput}\n')
#   }
# 
#   base$knitr$knit_hooks$chunk   <- hook_chunk
#   base$knitr$knit_hooks$source  <- hook_input
#   base$knitr$knit_hooks$output  <- hook_output
#   base$knitr$knit_hooks$message <- hook_output
#   base$knitr$knit_hooks$warning <- hook_output
#   base$knitr$knit_hooks$plot <- knitr::hook_plot_tex
# 
# base
}

