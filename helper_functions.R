# These are different helper functions for the book

colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color, 
            x)
  } else x
}

file.name <- function(x) {
  if (knitr::is_latex_output()) {
    sprintf("\\texttt{%s}", x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='font-family: sans-serif; font-size: medium'>%s</span>",
            x)
  } else x
}