cat('Loading default .Rprofile...\n')

### Do you want to automatically convert strings to factor variables in a data.frame?
### WARNING!!! This makes your code less portable/reproducible.
options(stringsAsFactors = FALSE)

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
auto_loads = c(
        'plyr',
        'tidyverse',
#        'tidyselect',
#        'lubridate',
#        'forcats',
#        'stringr',
#        'reshape2',
#        'kpjmisc',
#        'egg',
#        'googlesheets',
        'janitor',
        'patchwork',
#        'shades',
        'fs',
        'datapasta'
        )

options(
   defaultPackages = c(getOption('defaultPackages'), auto_loads),
   tidyverse.quiet = T,
   datatable.verbose = F
   )

like <- function(vector, pattern)
{
  # Intended for use with a data.table 'where'
  # Don't use * or % like SQL's like.  Uses regexpr syntax - more powerful.
  if (is.factor(vector)) {
    as.integer(vector) %in% grep(pattern,levels(vector))
  } else {
    # most usually character, but integer and numerics will be silently coerced by grepl
    grepl(pattern,vector)
  }
  # returns 'logical' so can be combined with other where clauses.
}

"%like%" = like

#### Negates %in%
'%nin%' = Negate('%in%')
'%lik%' = '%like%'
'%l%' = '%like%'

#### Convenience functions
len = length
lu = function(vector_in) { length(unique(vector_in ))}
filter = dplyr::filter
count = dplyr::count
fread = function(x, ...) as_tibble(data.table::fread(x, ...))
#fwrite = data.table::fwrite

# Set ggplot theme
#theme_set(theme_bwmin)
#options(
#  ggplot2.discrete.fill = list(
#    c("#E69F00", "#56B4E9", "#009E73", "#D55E00", "#F0E442", "#0072B2", "#CC79A7", "#999999"),
#    RColorBrewer::brewer.pal(8, 'Set2')
#  ),
#  ggplot2.discrete.color = list(
#    c("#E69F00", "#56B4E9", "#009E73", "#D55E00", "#F0E442", "#0072B2", "#CC79A7", "#999999"),
#    RColorBrewer::brewer.pal(8, 'Set2')
#  )
#)
cat('...done!\n')

# Set python version in reticulate
# Sys.setenv(RETICULATE_PYTHON = '/usr/local/bin/python2')
Sys.setenv(RETICULATE_PYTHON = '~/venv/dev/bin/python')
