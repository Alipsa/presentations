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
  pres$addSlide("TITLE_AND_CONTENT")
  pptFile <- file.path(getwd(), "test.pptx")
  write.presentation(pres, pptFile)
  assertTrue(file.exists(pptFile))
}