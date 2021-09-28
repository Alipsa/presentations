# This represents the base class for Slides

Slide <- setRefClass(
  Class = "Slide",
  fields = list(
    hidden = "logical",
    layout = "character"
  ),
  methods = list(
    
    isHidden = function() {
      hidden
    },
    
    setHidden = function(hidden) {
      "Set the hidden attribute of this Slide"
      hidden <<- as.logical(hidden)
      invisible(.self)
    },
    
    setLayout = function(layout) {
      "Set the layout of this Slide"
      layout <<- as.character(layout)
      invisible(.self)
    },
    
    toJSON = function() {
      paste0('{ "hidden" : "', hidden, '", "layout" : "', layout, '" }')
    }
  )
)