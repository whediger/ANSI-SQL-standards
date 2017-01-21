

SELECT  Ingredients.IngredientName,
        SUM(Recipe_Ingredients.Amount) AS Amount,
        Measurements.MeasurementDescription
FROM Recipe_Ingredients
INNER JOIN Measurements
  ON  Recipe_Ingredients.MeasureAmountID =
      Measurements.MeasureAmountID
INNER JOIN Ingredients
  ON  Recipe_Ingredients.IngredientID =
      Ingredients.IngredientID
GROUP BY  Recipe_Ingredients.MeasureAmountID,
          Ingredients.IngredientID
ORDER BY Ingredients.IngredientName;
