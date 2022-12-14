% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_citation.R
\name{format_citation}
\alias{format_citation}
\title{Format authors' names into ABNT}
\usage{
format_citation(variable, separator = ",", space = TRUE)
}
\arguments{
\item{variable}{The authors' names variable}

\item{separator}{The separator used between authors' names}

\item{space}{Is there space after the separator?}
}
\value{

}
\description{
Format authors' names into ABNT
}
\examples{
x <- data.frame(
names = c("Daenerys Targaryen, George R. R. Martin, Luís Inácio Lula da Silva",
          "Hadley Alexander Wickham, Joseph J. Allaire"))
x \%>\%
  dplyr::mutate(new_names = format_citation(names))
}
