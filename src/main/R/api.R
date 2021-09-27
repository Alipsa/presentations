#######################
## Presentations api ##
#######################

# type is either "pptx" or "odp"
create.presentation <- function(type = "pptx") {
  if (tolower(type) == "pptx") {
    return (PptxPresentation$new())
  } else if(tolower(type) == "odp") {
    stop("impress presenttions not yet supported!")
  } else {
    stop(paste0("Unknown presentation type '", type, "', expected either 'pptx' or 'odp'"))
  }
  
}

read.presentation <- function(fileName) {
  
}

# Presentation is the object created by create.presentation or read.presentation
# The extension determines the format pptx for Powerpoint, odp for Open/Libre Office
write.presentation <- function(Presentation, fileName) {
  
}