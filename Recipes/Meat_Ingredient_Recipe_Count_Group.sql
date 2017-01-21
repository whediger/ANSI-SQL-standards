
SELECT  Ingredients.IngredientName,
        (SELECT COUNT(Recipe_Ingredients.IngredientID) AS Recipe_Count
        FROM Recipe_Ingredients
        WHERE Recipe_Ingredients.IngredientID =
              Ingredients.IngredientID)
        AS Recipe_Count
FROM Ingredients
INNER JOIN Recipe_Ingredients
  ON  Ingredients.IngredientID =
      Recipe_Ingredients.IngredientID
WHERE Ingredients.IngredientClassID = 2
GROUP BY  Ingredients.IngredientName,
          Recipe_Count;
