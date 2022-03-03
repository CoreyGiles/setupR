#' @title Fix Library Path
#'
#' @description \code{fixLibPath} sets up your R installation to use the Q drive
#' library. You will need to restart R for the changes to take effect.
#'
#' @return awesomeness
#' @export
#'
#' @examples \dontrun{fixLibPath()}
fixLibPath = function()
{
  ## Get the path to the RProfile.site
  path<-file.path(R.home(),"etc/","Rprofile.site")
  ## Ensure that the path works
  path<-normalizePath(path,winslash="/",mustWork=TRUE)
  ## Find the Rprofile.site provided in this package
  pckgRprofileFilesPath<-system.file("Rprofile.site",package="setupR")
  ## Read in the file
  lines<-readLines(pckgRprofileFilesPath)
  ## Overwrite the Rprofile.site as I am a monster with no regard for human decency
  writeLines(lines,path)
}
