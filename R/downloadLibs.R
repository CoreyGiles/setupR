#' @title Download Libraries
#'
#' @description \code{downloadLibs} downloads libraries that are used for quanting
#'
#' @return a working computer (hopefully...)
#' @export
#'
#' @examples \dontrun{downloadLibs()}
downloadLibs = function()
{
  ## Install shinyDirectoryInput
  devtools::install_github('wleepang/shiny-directory-input',
                          quiet=TRUE,
                          lib=.Library)
  ## Install the correct version of shiny
  devtools::install_version("shiny",
                            version="1.6.0",
                            repos="http://cran.us.r-project.org",
                            quiet=TRUE,
                            lib=.Library)

}

