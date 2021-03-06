

SELECT SUM(Recipe_Ingredients.Amount) AS Salt_Total_All_Recipes
FROM  Recipe_Ingredients
WHERE Recipe_Ingredients.IngredientID =
      SOME(SELECT RI.IngredientID
      FROM Recipe_Ingredients AS RI
      INNER JOIN Ingredients
        ON  RI.IngredientID =
            Ingredients.IngredientID
      WHERE Ingredients.IngredientName = 'Salt');
