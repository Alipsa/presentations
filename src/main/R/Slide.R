# This represents the base class for Slides

Slide <- setRefClass(
  Class = "Slide",
  fields = list(
    m_name = "character"
  ),
  methods = list(
    
    getName = function() {
      m_name
    },
    
    setName = function(name) {
      "Set the name of this Slide"
      m_name <<- as.character(name)
      invisible(.self)
    }
  )
)