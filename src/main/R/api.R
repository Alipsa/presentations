#######################
## Presentations api ##
#######################

# type is either "pptx" or "odp"
create.presentation <- function() {
    Presentation$new()
}

read.presentation <- function(fileName) {
  
}

# Presentation is the object created by create.presentation or read.presentation
# The extension determines the format pptx for Powerpoint, odp for Open/Libre Office
write.presentation <- function(presentation, fileName, type = NA) {
  if (is.na(type)) {
    if (endsWith(tolower(fileName), "pptx")) {
      PptxExporter$export(presentation$toJSON(), fileName)
    } else if (endsWith(tolower(fileName), "odp")) {
      stop("export to Impress format (ODP) is not yet implmented")
    } else {
      stop("Unable to determine type to export to, either end the fileName with pptx or odp or set type explicitly")
    }
  }
}