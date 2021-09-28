# This represents the base class for Slides

Slide <- setRefClass(
  Class = "Slide",
  fields = list(
    hidden = "logical",
    layout = "character",
    contentList = "list"
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

    setContent = function(index, content) {
      content[index] <<- content
      invisible(.self)
    },
    
    toJSON = function() {
      "this Slide as a json string"
      paste0('{ "hidden" : "', hidden, '", "layout" : "', layout, '" }')
    }
  )
)