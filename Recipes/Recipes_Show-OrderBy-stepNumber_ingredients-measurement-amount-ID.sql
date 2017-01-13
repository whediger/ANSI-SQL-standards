
SELECT Recipe_Classes.RecipeClassDescription, Recipes.RecipeTitle,
  Recipes.Preparation, Ingredients.IngredientName,
  Recipe_Ingredients.RecipeSeqNo,
  Recipe_Ingredients.Amount,
  Measurements.MeasurementDescription
FROM (((Recipe_Classes
INNER JOIN Recipes
ON Recipe_Classes.RecipeClassID)
INNER JOIN Recipe_Ingredients
ON Recipes.RecipeID = Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID)
INNER JOIN Measurements
ON Measurements.MeasureAmountID = Recipe_Ingredients.MeasureAmountID
ORDER BY RecipeTitle, RecipeSeqNo;
