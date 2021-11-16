#' To extract binomial scientific names
#'
#' Some description about the function.
#'
#' @param v Input vector, must be a character vector.
#' @param patterns The Regex pattern to match, default will extract the first two words.
#' @param repl The values to replace the pattern matched that was specified by `patterns`.
#' @param ... Additional arguments to be passed to `[sub]` function.
#' @return A character vector, with the binomial scientific names
#' @export
#' @examples get_binomial_name(c("Carex aquatilis Wahlenb.", "Boerhavia coulteri (Hook. f.) S. Watson"))
#'
get_binomial_name <- function(v,
                              patterns = "^([^ ]+ [^ ]*) .*",
                              repl = "\\1",
                              ...
){
  if(!is.character(v)){ # in case non-character input
    stop("The input vector is not character.")
  }
  # v2 = stringr::str_extract(v, patterns)
  v2 = sub(pattern = patterns, replacement = repl, x = v, ...)
  return(v2)
}
