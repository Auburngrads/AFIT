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
  
  template <- find_resource("preamble", "template.tex")
  
  base <- inherit_pdf_document(..., template = template)

  # Render will generate tex file, post-process hook generates appropriate
  # RJwrapper.tex and use pandoc to build pdf from that
  base$pandoc$to <- "latex"
  base$pandoc$ext <- ".tex"

  base$post_processor <- function(metadata, utf8_input, output_file, clean, verbose) {
    filename <- tools::file_path_sans_ext(basename(output_file))
    wrapper_metadata <- list(preamble = metadata$preamble, filename = filename)
    wrapper_template <- find_resource("preamble", "template.tex")
    wrapper_output <- file.path(getwd(), "template.tex")
    template_pandoc(wrapper_metadata, wrapper_template, wrapper_output, verbose)

    tools::texi2pdf("template.tex", clean = clean)
    "template.pdf"
  }

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment <- "#>"

  hilight_source <- knitr_fun('hilight_source')
  hook_chunk = function(x, options) {
    if (output_asis(x, options)) return(x)
    paste('\\begin{Schunk}\n', x, '\\end{Schunk}', sep = '')
  }
  hook_input <- function(x, options)
    paste(c('\\begin{Sinput}', hilight_source(x, 'sweave', options), '\\end{Sinput}', ''),
      collapse = '\n')
  hook_output <- function(x, options) paste('\\begin{Soutput}\n', x, '\\end{Soutput}\n', sep = '')

  base$knitr$knit_hooks$chunk   <- hook_chunk
  base$knitr$knit_hooks$source  <- hook_input
  base$knitr$knit_hooks$output  <- hook_output
  base$knitr$knit_hooks$message <- hook_output
  base$knitr$knit_hooks$warning <- hook_output
  base$knitr$knit_hooks$plot <- knitr::hook_plot_tex

base
}

