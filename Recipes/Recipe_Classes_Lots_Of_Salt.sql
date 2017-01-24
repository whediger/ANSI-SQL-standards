
SELECT  Recipes.RecipeTitle AS Recipes_With_Salt
FROM Recipes
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID
INNER JOIN Measurements
  ON  Recipe_Ingredients.MeasureAmountID =
      Measurements.MeasureAmountID
INNER JOIN Ingredients
  ON  Recipe_Ingredients.IngredientID =
      Ingredients.IngredientID
WHERE Ingredients.IngredientName = 'Salt'
AND   Recipe_Ingredients.Amount >= 3;
