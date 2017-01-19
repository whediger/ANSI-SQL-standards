

SELECT COUNT(*) AS NumberOfRecipes
FROM Recipes
WHERE Recipes.RecipeID
  IN (SELECT RecipeID
      FROM Recipe_Ingredients
      INNER JOIN Ingredients
        ON  recipe_Ingredients.IngredientID =
            Ingredients.IngredientID
      WHERE Ingredients.IngredientName LIKE 'beef%');
