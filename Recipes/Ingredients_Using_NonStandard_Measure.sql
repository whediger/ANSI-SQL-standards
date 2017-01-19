
SELECT DISTINCT Ingredients.IngredientName
FROM Ingredients
INNER JOIN Recipe_Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
WHERE Recipe_Ingredients.MeasureAmountID =
      SOME(SELECT RI.MeasureAmountID
          FROM Recipe_Ingredients AS RI
          INNER JOIN Measurements
            ON  RI.MeasureAmountID =
                Measurements.MeasureAmountID
          WHERE RI.MeasureAmountID <> Ingredients.MeasureAmountID);
