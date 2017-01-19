
SELECT COUNT(*) AS NumberOfIngredients
FROM Ingredients
INNER JOIN Measurements
  ON  Ingredients.MeasureAmountID =
      Measurements.MeasureAmountID
WHERE MeasurementDescription = 'Cup';
