
#' Create an AFIT Presentation
#'
#' Format for converting from R Markdown to a slidy presentation.
#'
#' @inheritParams slidy_presentation
#' @inheritParams html_document
#'
#' @param ... extra stuff
#' @param template The HTML template file
#' @param format The type of template format type
#' @param incremental Should bullets be revealed individually?
#' @param fig_width The default figure width
#' @param fig_height The default figure height
#' @param self_contained How to handle resources
#' @param smart Is this presentation smart
#' @param highlight Code highlighting applied
#' @param pandoc_args Arguments to apply to Pandoc
#' @param duration Duration (in minutes) of the slide deck. This value is used
#'   to add a countdown timer to the slide footer.
#' @param footer Footer text (e.g. organization name and/or copyright)
#' @param font_adjustment Increase or decrease the default font size
#'  (e.g. -1 or +1). You can also manually adjust the font size during the
#'  presentation using the 'S' (smaller) and 'B' (bigger) keys.
#'
#' @return R Markdown output format to pass to \code{\link{render}}
#'
#' @details
#'
#' See the \href{http://rmarkdown.rstudio.com/slidy_presentation_format.html}{online
#' documentation} for additional details on using the \code{slidy_presentation} format.
#'
#' For more information on markdown syntax for presentations see the
#' \href{http://pandoc.org/README.html}{pandoc online documentation}.
#'
#' @examples
#' \dontrun{
#'
#' library(AFIT)
#'
#' # simple invocation
#' render("afit_presentation.Rmd", slidy_presentation())
#'
#' # specify an option for incremental rendering
#' render("afit_presentation.Rmd", slidy_presentation(incremental = TRUE))
#' }
#'
#' @export

afit_presentation <- function(..., 
                              template = 'default.html',
                              format = 'afit_presentation',
                               incremental = FALSE, 
                               fig_width = 8, 
                               fig_height = 4.9, 
                               self_contained = TRUE,
                               smart = FALSE, 
                               highlight = "default", 
                               pandoc_args = '--mathjax=default',
                              duration = NULL,
                              footer = NULL,
                              font_adjustment = 0) {

rmarkdown::slidy_presentation(...,
                          template = system.file("rmarkdown", "templates", format, 'resources',template,
                          package = "AFIT"),
                          incremental = incremental,
                          fig_width = fig_width,
                          fig_height = fig_height,
                          smart = smart,
                          self_contained = self_contained,
                          css = NULL, #system.file('scripts','css','afit-slidy.css', package = 'AFIT'),
                          highlight = highlight,
                          includes = NULL,
                          pandoc_args = pandoc_args,
                          duration = duration,
                          footer = footer,
                          font_adjustment = font_adjustment)
}
