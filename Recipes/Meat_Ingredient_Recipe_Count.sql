
SELECT  Ingredient_Classes.IngredientClassDescription AS Ingredient,
        Ingredients.IngredientName,
        (SELECT COUNT(*)
        FROM Recipe_Ingredients
        WHERE Recipe_Ingredients.IngredientID =
              Ingredients.IngredientID)
        AS RecipeCount
FROM Ingredient_Classes
INNER JOIN Ingredients
  ON  Ingredient_Classes.IngredientClassID =
      Ingredients.IngredientClassID
WHERE Ingredient_Classes.IngredientClassDescription = 'Meat';
