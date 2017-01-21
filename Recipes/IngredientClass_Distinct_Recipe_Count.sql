
SELECT  Ingredient_Classes.IngredientClassDescription,
        COUNT(DISTINCT RecipeID) AS CountOfRecipe
FROM (Ingredient_Classes
INNER JOIN Ingredients
  ON  Ingredient_Classes.IngredientClassID =
      Ingredients.IngredientClassID)
INNER JOIN Recipe_Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
GROUP BY Ingredient_Classes.IngredientClassDescription;
