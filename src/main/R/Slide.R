# This represents the base class for Slides

Slide <- setRefClass(
  Class = "Slide",
  fields = list(
    m_name = "character",
    layout = "character"
  ),
  methods = list(
    
    getName = function() {
      m_name
    },
    
    setName = function(name) {
      "Set the name of this Slide"
      m_name <<- as.character(name)
      invisible(.self)
    },
    
    setLayout = function(layout) {
      "Set the layout of this Slide"
      layout <<- as.character(layout)
      invisible(.self)
    },
    
    toJSON = function() {
      paste0('{ "name" : "', m_name, '", "layout" : "', layout, '" }')
    }
  )
)