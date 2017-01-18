
SELECT  Recipes.RecipeTitle,
        Ingredients.IngredientName
FROM (Recipes
INNER JOIN Recipe_Ingredients
  ON  Recipes.RecipeID =
      Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
WHERE Recipes.RecipeID IN
    (SELECT RecipeID
    FROM (Recipe_Ingredients
          INNER JOIN Ingredients
            ON  Recipe_Ingredients.IngredientID =
                Ingredients.IngredientID)
          INNER JOIN Ingredient_Classes
            ON  Ingredients.IngredientClassID =
                Ingredient_Classes.IngredientClassID
          WHERE Ingredient_Classes.IngredientClassDescription = 'Seafood');
