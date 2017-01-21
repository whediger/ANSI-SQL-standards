
SELECT  Ingredients.IngredientName,
        COUNT(Recipe_Ingredients.IngredientID) AS Recipe_Count
FROM Ingredients
INNER JOIN Recipe_Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
WHERE Ingredients.IngredientClassID = 2
GROUP BY Ingredients.IngredientName;
