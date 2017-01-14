
SELECT Recipes.RecipeTitle,
  Ingredients.IngredientName,
  Measurements.MeasurementDescription,
  Recipe_Ingredients.Amount
FROM (((Recipe_Classes
INNER JOIN Recipes
  ON  Recipes.RecipeClassID =
      Recipe_Classes.RecipeClassID)
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID)
INNER JOIN Measurements
  ON  Measurements.MeasureAmountID =
      Recipe_Ingredients.MeasureAmountID
WHERE Recipe_Classes.RecipeClassDescription =
      'Main course';
