#' Format authors' names into ABNT
#'
#' @param variable The authors' names variable
#' @param separator The separator used between authors' names
#' @param space Is there space after the separator?
#'
#' @return
#' @export
#'
#' @examples
#' x <- data.frame(
#' names = c("Daenerys Targaryen, George R. R. Martin, Luís Inácio Lula da Silva",
#'           "Hadley Alexander Wickham, Joseph J. Allaire"))
#' x %>%
#'   dplyr::mutate(new_names = format_citation(names))

format_citation <- function(variable, separator = ",", space = TRUE) {

  sep <- paste0({{separator}},
         if({{space}} == TRUE){
           " "
         }
  )

  variable %>%
    strsplit(sep) %>%
    sapply(. %>%
             gsub("(.*?) (\\w+$)", "\\U\\2\\E, \\1", ., perl = TRUE) %>%
             gsub(" ([A-Z])\\w*\\.?", " \\1.", .) %>%
             paste(collapse = "; "))

}

