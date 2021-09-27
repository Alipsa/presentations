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
      print(paste("getting layout for", layoutName))
      slideMasters <- ppt$getSlideMasters()
      print(paste("slideMasters =", slideMasters))
      slideMaster = slideMasters[0]
      print(paste("slideMaster =", slideMaster))
      if ("TITLE" == layoutName) {
        return(slideMaster$getLayout(SlideLayout$TITLE))
      } 
      stop(paste("No layout found for '", layoutName, "'"))
    },
    
    addSlide = function(layout = "NONE") {
      pptLayout <- .getLayout(layout)
      print(paste("layout is", pptLayout))
      #pptSlide <- ppt$createSlide(pptLayout);
      #print(paste("pptSlide is", pptSlide))
      #slide <- PptxSlide$new(pptSlide)
      #print(paste("slide is", slide))
      #idx <- length(slides) + 1
      #print(paste("idx is", idx))
      #slides[[idx]] <<- slide
      return(invisible(.self))
    }
  )
)