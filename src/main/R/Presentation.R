# This represents the base class for a presentation as a whole

Presentation <- setRefClass(
  Class = "Presentation",
  fields = list(
    slides  = "list"
  ),
  methods = list(
    addSlide <- function(layout = "NONE") {},
    removeSlide <- function(slide) {

    },
    removeSlideByName <- function(slideName) {

    },
    removeSlideAt <- function(index) {

    },
    getSlideAt <- function(index) {

    },
    getSlideByName <- function(slideName) {

    },
    getSlides <- function() {
      slides
    }
  )
)