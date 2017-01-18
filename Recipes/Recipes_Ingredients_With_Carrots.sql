
SELECT  Recipes.RecipeTitle,
        Ingredients.IngredientName
FROM (Recipes
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
WHERE Recipes.RecipeID
      IN
      (SELECT Recipe_Ingredients.RecipeID
      FROM  Ingredients
      INNER JOIN Recipe_Ingredients
        ON  Ingredients.IngredientID =
            Recipe_Ingredients.IngredientID
      WHERE Ingredients.IngredientName = 'carrot');
