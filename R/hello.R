# Hello, world!
# This is an example function named 'hello' which prints
# 'Hello, world!'.

# You can learn more about package authoring with RStudio
# at: http://r-pkgs.had.co.nz/

# Some useful keyboard shortcuts for package authoring:
#       Build and Reload Package: 'Ctrl + Shift + B'
#       Check Package:            'Ctrl + Shift + E'
#       Test Package:             'Ctrl + Shift + T'

#------------------------------------------------------------
# Set-up the help page for the whole package

#' testing: A package of simple functions.
#'
#' David Luckett's simple but useful functions:
#' hello(), now(), na_count(), etc.
#'
#' @section Functions in package \code{testing}
#' To see the list click on the <Index> link below.
#'
#' @docType package
#' @name testing
NULL
#> NULL


#------------------------------------------------------------
#' Print the text "Hello world, from David".
#'
#' Function \code{hello} takes no arguments.
#'
#' @examples
#' hello()

#' @export
hello <- function() {
    print("Hello world, from David")
}

#------------------------------------------------------------
#' Simple time indicator.
#'
#' Function \code{now} takes no arguments.
#'
#' @return The current system time in a specifc format.
#' @examples
#' now()

#' @export
now <- function() {
    format(Sys.time(), "%I:%M %p")
}

#------------------------------------------------------------
#' Count non-finite elements in an object.
#'
#' \code{na_count} returns the frequency of \code{NA}, \code{NaN}
#' and \code{Inf} elements in a vector, matrix or array.
#'
#' It can be utilised in apply functions to work with dataframes
#' and lists.
#'
#' @param x An object.
#' @return The number of non-finite items in \code{x}.
#' @examples
#' data(iris)
#' iris$Sepal.Length[c(2,4,5)] <- NA
#' na_count(iris$Sepal.Length)
#' lapply(iris, na_count)
#'
#' ma <- matrix(c(1,2,3,4,NA,NaN,Inf,8,9,10), nrow=5, ncol=2)
#' na_count(ma)

#' @export
na_count <- function(x) {
    sum(!is.finite(x))
}


# Ends.
