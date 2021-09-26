# This represents the presentation as a whole

PptxPresentation <- setRefClass(
  Class = "PptxPresentation",
  contains = "Presentation",
  fields = list(
    ppt = "ANY"
  ),
  methods = list(
  
    initialize = function() {
      "PptxPresentation constructor"
      ppt <<- XMLSlideShow$new()
    },
    
    .getLayout = function(layoutName) {
      slideMaster = ppt$getSlideMasters()[[0]]
      if ("TITLE" == layoutName) {
        return(slideMaster.getLayout(SlideLayout$TITLE))
      } 
      return(NULL)
    },
    
    addSlide = function(layout = "NONE") {
      pptSlide <- ppt.createSlide(.getLayout(layout));
      slide <- PptxSlide$new(pptSlide)
      idx <- length(slides) + 1
      slides[[idx]] <<- slide
      return(invisible(.self))
    }
  )
)