#' An even easier way to import your data!
#'
#' \code{easy.load} generates the code required to import your data by
#'   asking questions from the R console
#'
#' @details \code{easy.load} will begin the import wizard. A series of
#'   questions presented from the R console will ask for the necessary
#'   information to import your data in a user-friendly way. See
#'   \code{\link{load.data}} for parameter definitions and conventions
#'   for how to answer \code{easy.load} questions if you get stuck.
#'
#'   \code{easy.load} uses an interactive window to locate files
#'   to create the path name. The window usually appears BEHIND
#'   the R session and other open programs, so minimize open
#'   windows until the interactive pop-up window is visible. After
#'   you browse to your file location, bring the R session window
#'   back up to continue.
#'
#'  Follow any instructions accompanying the questions exactly,
#'  as some prompts require a very specific answer format.
#'
#' @return A complete line of code ready to be copy/pasted into
#'   the command line or R script
#'
#' @author Travis Moore
#'
#' @examples
#' \dontrun{
#' # example output from easy.load (after answering questions)
#' myData = load.data('/Users/Username/Folder/', 'Positive', 20, -200, 899, 'n', FALSE)
#' }


easy.load <- function() {

  cat("\014") # clears the console (not the environment)
  systemName <- Sys.info()["sysname"]

  cat("******************************************\n")
  cat("Welcome to the erp.easy data import wizard\n")
  cat("******************************************\n")
  cat("\n")
  cat("Answer the questions to the following \n")
  cat("prompts to generate the code for importing\n")
  cat("your data.\n")
  gtools::ask(msg = "Press <RETURN> to continue: ")
  cat("Use the pop-up window to browse to the folder \n")
  cat("where your files are located.\n")
  cat("If you don't see the pop-up window, you may \n")
  cat("need to minimize your R session and any other windows.\n")
  cat("After you browse to your file location, bring the \n")
  cat("R session window back up to continue.\n")
  cat("Find the pop-up window now.\n")

  pathName = tcltk::tk_choose.dir(getwd(), caption =
                                    "File Location")

  if (systemName == "Windows") {
    pathName <- paste(pathName, "/", sep="")
  } else {
    pathName <- paste(pathName, "\\", sep="")}


  condition <- gtools::ask("Enter the trial type (do not use quotes):")

  numSubs <- gtools::ask("How many subjects are there in each condition? ")
  numSubs <- as.numeric(numSubs)

  epochStart <- gtools::ask("Enter the earliest time point in the epoch.
For example, if your epoch is -200 to 800 ms, enter -200")
  epochStart <- as.numeric(epochStart)

  epochEnd <- gtools::ask("Enter the last time point in the epoch.
For example, if your epoch is -200 to 800 ms, enter 800")
  epochEnd <- as.numeric(epochEnd)
  epochEnd <- epochEnd - 1

  bsln <- gtools::ask("Do you want to baseline correct your data? (type exactly either: y or n)")

  hdr <- gtools::ask("Do your files contain a header (i.e., column labels)? (type exactly either: TRUE or FALSE)")
  hdr <- as.logical(hdr)

  cat("\n")
  cat("Copy and paste the command below to import your data!\n\n")

  cmd = paste("myData = ", "load.data(", "'", pathName, "'", ", ",
              "'", condition, "'", ", ",
              numSubs, ", ",
              epochStart, ", ",
              epochEnd, ", ",
              "'", bsln, "'", ", ",
              hdr,
              ")",
              sep="")

  return(noquote(cmd))
  cat("\n\n\n")
}
