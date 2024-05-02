library(shinytest2)

test_that("{shinytest2} recording: branch_protection", {
  app <- AppDriver$new(variant = platform_variant(), name = "branch_protection", 
      seed = 123, height = 577, width = 979)
  app$set_inputs(clusters = 2)
  app$expect_screenshot()
  app$set_inputs(clusters = 3)
  app$expect_screenshot()
  app$set_inputs(clusters = 4)
  app$expect_screenshot()
  app$expect_values()
})

