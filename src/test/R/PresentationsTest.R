library('hamcrest')
library('se.alipsa:presentations')

test.createSlide <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide("TITLE")
}