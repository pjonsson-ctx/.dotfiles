cat('Loading default .Rprofile...\n')

### Do you want to automatically convert strings to factor variables in a data.frame?
### WARNING!!! This makes your code less portable/reproducible.
options(stringsAsFactors=FALSE)

## Single character shortcuts for summary() and head().
.env <- new.env()
.env$s <- base::summary
.env$h <- utils::head

### ht==headtail, i.e., show the first and last 10 items of an object
.env$ht <- function(d) rbind(head(d,10),tail(d,10))

## Show the first 5 rows and first 10 columns of a data frame or matrix
.env$hh <- function(d) if(class(d)=="matrix"|class(d)=="data.frame") d[1:5,1:10]

### Speed up loading
utils::rc.settings(ipck=TRUE)
attach(.env)
Sys.setenv(TAR = '/usr/bin/tar')

### Start-up items
quiet_load = function(a_package) {
  suppressWarnings(suppressPackageStartupMessages(library(a_package, character.only=TRUE))) 
}
auto_loads = c(
        'plyr',
        'tidyverse',
        'lubridate',
        'forcats',
        'stringr',
		'kpjmisc',
		'egg',
        'googlesheets',
        'mosaic'
        )

if(interactive()){
  invisible(sapply(auto_loads, quiet_load))
}

### Negates %in%
'%nin%' = Negate('%in%')
'%lik%' = '%like%'
'%l%' = '%like%'

### Convenience functions
len = length
lib = library
.Last = .Last.value
lu = function(vector_in) { length(unique(vector_in ))}
filter = dplyr::filter
count = dplyr::count

cat('...done!\n')

