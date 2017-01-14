
SELECT Recipes.RecipeID, Recipes.RecipeTitle,
  Ingredients.IngredientName
  FROM((Recipes
  INNER JOIN Recipe_Ingredients
    ON  Recipes.RecipeID =
        Recipe_Ingredients.RecipeID)
  INNER JOIN Ingredients
    ON  Ingredients.IngredientID =
        Recipe_Ingredients.IngredientID)
  INNER JOIN
    (SELECT Recipe_Ingredients.RecipeID
    FROM Ingredients
    INNER JOIN Recipe_Ingredients
      ON  Ingredients.IngredientID =
          Recipe_Ingredients.IngredientID
    WHERE Ingredients.IngredientName =
          'Carrot')
    AS    Carrots
  ON  Recipes.RecipeID =
      Carrots.RecipeID;
