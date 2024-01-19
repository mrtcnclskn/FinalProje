# tests.R

library(testthat)



test_that("Veri tipleri doğru mu kontrol et", {
  
  
  # Product Category sütunu faktör türüne dönüştürüldü mü?
  expect_is(myDF$`Product Category`, "factor")
  
  # Total Purchase Amount sütunu sayısal değerlere dönüştürüldü mü?
  expect_is(myDF$`Total Purchase Amount`, "numeric")
})

