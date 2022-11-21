
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ABNTcitation

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of ABNTcitation from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("brunomioto/ABNTcitation")
```

## Format citations

``` r
library(ABNTcitation)
library(dplyr)

x <- dplyr::tibble(
names = c("Daenerys Targaryen, George R. R. Martin, Luís Inácio Lula da Silva",
          "Hadley Alexander Wickham, Joseph J. Allaire"))
x %>%
  dplyr::mutate(new_names = format_citation(names))
#> # A tibble: 2 x 2
#>   names                                                              new_names  
#>   <chr>                                                              <chr>      
#> 1 Daenerys Targaryen, George R. R. Martin, Luís Inácio Lula da Silva TARGARYEN,~
#> 2 Hadley Alexander Wickham, Joseph J. Allaire                        WICKHAM, H~
```
