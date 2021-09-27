library('hamcrest')
library('se.alipsa:presentations')

test.createSlide <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide("TITLE")
}

test.exportToPptx <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide("TITLE")
  write.presentation(pres, "test.pptx")
  #assertTrue(file.exists("test.pptx"))
}