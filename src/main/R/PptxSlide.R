# This represents a single slide in the presentation

PptxSlide <- setRefClass(
  Class = "PptxSlide",
  contains = "Slide",
  
  fields = list(
    pptSlide = "ANY"
  ),
  
  methods = list(
    initialize = function(slide) {
      "PptxSlide constructor"
      pptSlide <<- slide
    }
  )
)