
SELECT I1.IngredientName AS First_Ingedient, I2.IngredientName AS Second_Ingredient,
  Measurements.MeasurementDescription
FROM (Ingredients I1
  INNER JOIN Ingredients I2
    ON  I1.MeasureAmountID =
        I2.MeasureAmountID)
INNER JOIN Measurements
  ON  Measurements.MeasureAmountID =
      I1.MeasureAmountID
WHERE I1.IngredientID !=
      I2.IngredientID;
