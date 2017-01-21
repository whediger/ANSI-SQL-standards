
SELECT Recipes.RecipeTitle
FROM Recipes
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID
INNER JOIN Ingredients
  ON  Recipe_Ingredients.IngredientID =
      Ingredients.IngredientID
WHERE Recipe_Ingredients.Amount =
      (SELECT MAX(Recipe_Ingredients.Amount)
      FROM Recipe_Ingredients);
