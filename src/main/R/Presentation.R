# This represents the base class for a presentation as a whole

Presentation <- setRefClass(
  Class = "Presentation",
  fields = list(
    slides  = "list"
  ),
  methods = list(
  
    addSlide = function(layout = "NONE") {
      slide <- Slide$new()
      slide$setLayout(layout)
      slides[[length(slides) + 1]] <<- slide
      slide
    },
    
    removeSlide = function(slideNumber) {
      slides <<- slides[!slideNumber]
      invisible(.self)
    },
    
    getSlideAt = function(index) {
      slides[index]
    },
    
    getSlides = function() {
      slides
    },
    
    toJSON = function() {
      contents <- c()
      for (slide in slides) {
        contents <- c(contents, slide$toJSON())
      }
      paste0('{ "slides" : [', paste(contents, collapse = ', '), ']}')
    }
  )
)