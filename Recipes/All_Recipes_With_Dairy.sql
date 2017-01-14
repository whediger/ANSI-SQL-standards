
SELECT Recipes.RecipeTitle, Ingredients.IngredientName
FROM ((Recipes
  INNER JOIN Recipe_Ingredients
    ON  Recipes.RecipeID =
        Recipe_Ingredients.RecipeID)
  INNER JOIN Ingredients
    ON  Recipe_Ingredients.IngredientID =
        Ingredients.IngredientID)
  INNER JOIN Ingredient_Classes
    ON  Ingredient_Classes.IngredientClassID =
        Ingredients.IngredientClassID
WHERE Ingredient_Classes.IngredientClassID IN(8, 11, 12);
