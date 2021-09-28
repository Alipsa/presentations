library('hamcrest')
library('se.alipsa:presentations')

test.createSlide <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide()
  assertThat(length(pres$getSlides()), equalTo(1))
  pptFile <- file.path(getwd(), "test.createSlide.pptx")
  write.presentation(pres, pptFile)
  assertTrue(file.exists(pptFile))
}

test.createSlideWrongLayout <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide("cool stuff")
  assertThat(length(pres$getSlides()), equalTo(1))
  pptFile <- file.path(getwd(), "test.createSlide.pptx")
  write.presentation(pres, pptFile)
  assertTrue(file.exists(pptFile))
}

test.create2Slides <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  pres$addSlide("TITLE")
  pres$addSlide("TITLE_AND_CONTENT")
  assertThat(length(pres$getSlides()), equalTo(2))
  pptFile <- file.path(getwd(), "test.create2Slides.pptx")
  write.presentation(pres, pptFile)
  assertTrue(file.exists(pptFile))
}

test.create2SlidesWithContent <- function() {
  pres <- create.presentation()
  assertFalse(is.null(pres))
  titleSlide <- pres$addSlide("TITLE")
  titleSlide$setContent(0, "The title for the first slide")
  titleContentSlide <- pres$addSlide("TITLE_AND_CONTENT")
  titleContentSlide$setContent(0, "The title for the second slide")
  titleContentSlide$setContent(1, "The body for the second slide")
  assertThat(length(pres$getSlides()), equalTo(2))
  pptFile <- file.path(getwd(), "test.create2SlidesWithContent.pptx")
  write.presentation(pres, pptFile)
  assertTrue(file.exists(pptFile))
}

test.createSlideWithImage <- function() {

}

test.createSlideWithGraph <- function() {

}

test.createSlideWithTable <- function() {

}

# The 9 layouts are (https://support.microsoft.com/en-us/office/what-is-a-slide-layout-99da5716-92ee-4b6a-a0b5-beea45150f3a)
# Title slide
# Title and content
# Section header
# Two content
# comparison
# Title only
# Blank
# Content with caption
# Picture with caption
test.create9layouts <- function() {

}