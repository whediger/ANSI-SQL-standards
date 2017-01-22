
SELECT Recipes.RecipeTitle
FROM Recipes
WHERE Recipes.RecipeID
      IN (SELECT Recipe_Ingredients.RecipeID
          FROM Ingredients
          INNER JOIN Recipe_Ingredients
            ON  Ingredients.IngredientID =
                Recipe_Ingredients.IngredientID
          WHERE Ingredients.IngredientName = 'Beef'
          OR    Ingredients.IngredientName = 'Garlic'
          GROUP BY Recipe_Ingredients.RecipeID
          HAVING COUNT(Recipe_Ingredients.RecipeID) = 2);
