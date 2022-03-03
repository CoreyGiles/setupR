

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste0("If you loaded this package, you should be a member of the Metabolomics Lab at the Baker Institute.\n",
           "If you need access to the Q drive library, run: fixLibPath()\n",
           "If you need to install some critical libraries, run: downloadLibs()\n",
           "Apart from that, have a great day :)"))
}
