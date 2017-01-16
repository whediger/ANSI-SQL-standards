
SELECT Ingredients.IngredientName, Recipes.RecipeTitle
FROM  Ingredients
RIGHT OUTER JOIN Recipe_Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
RIGHT OUTER JOIN Recipes
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID;
