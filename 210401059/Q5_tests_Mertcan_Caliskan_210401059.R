# 'merge' işlemini kontrol etmek için test
test_that("Merge işlemi doğru mu gerçekleşiyor?", {
  # Veri çerçeveleri oluştur
  df1 <- data.frame(Customer_ID = c(1, 2, 3),
                    Purchase_Amount = c(100, 150, 200))
  
  df2 <- data.frame(Customer_ID = c(2, 3, 4),
                    Returns_Amount = c(10, 15, 20))
  
  # Merge işlemi
  merged_df <- merge(df1, df2, by = "Customer_ID")
  
  # Beklenen sonuçlar
  expected_result <- data.frame(Customer_ID = c(2, 3),
                                Purchase_Amount = c(150, 200),
                                Returns_Amount = c(10, 15))
  
  # Test
  expect_equal(merged_df, expected_result, 
               info = "Merge işlemi doğru sonuçları üretiyor mu?")
})


