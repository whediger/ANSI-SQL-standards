
SELECT  'Default Measurement' AS Recipe,
        Ingredients.IngredientName AS Ingredient,
        '1' as Amount,
        Measurements.MeasurementDescription AS Measurement
FROM  Ingredients
LEFT OUTER JOIN Measurements
  ON  Measurements.MeasureAmountID =
      Ingredients.MeasureAmountID

UNION ALL

SELECT  Recipes.RecipeTitle AS Recipe,
        Ingredients.IngredientName AS Ingredient,
        Recipe_Ingredients.Amount AS Amount,
        Measurements.MeasurementDescription AS Measurement
FROM  Recipes
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID
INNER JOIN Ingredients
  ON  Recipe_Ingredients.IngredientID =
      Ingredients.IngredientID
INNER JOIN Measurements
  ON  Recipe_Ingredients.MeasureAmountID =
      Measurements.MeasureAmountID

ORDER BY Ingredient;
