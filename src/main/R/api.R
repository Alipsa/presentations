#######################
## Presentations api ##
#######################

# type is either "pptx" or "odp"
create.presentation <- function(type = "pptx") {
  if (! type %in% c("pptx", "odp") {
    stop(paste0("Unknown presentation type '", type, "', expected either 'pptx' or 'odp'")
  }
  
}

read.presentation <- function(fileName) {
  
}

# Presentation is the object created by create.presentation or read.presentation
# The extension determines the format pptx for Powerpoint, odp for Open/Libre Office
write.presentation <- function(Presentation, fileName) {
  
}