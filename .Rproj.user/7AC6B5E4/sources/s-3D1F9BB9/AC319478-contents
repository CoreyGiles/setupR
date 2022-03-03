#' @title Get OS
#'
#' @description \code{getOS} looks up Sys.info() and determines the os
#'
#' @return character "mac", "linux" or "windows"
#' @export
#'
#' @examples \dontrun{getOS()}
getOS = function()
{
  sysinf = Sys.info()
  if (!is.null(sysinf))
  {
    os = sysinf['sysname']
    if (os == 'Darwin') os = "mac"
  } else
  {
    os = .Platform$OS.type
    if (grepl("^darwin", R.version$os)) os = "mac"
    if (grepl("linux-gnu", R.version$os)) os = "linux"
  }
  return(tolower(os))
}
