
SELECT DISTINCT Ingredients.IngredientName
FROM Ingredients
WHERE Ingredients.MeasureAmountID <>
      SOME(SELECT Recipe_Ingredients.MeasureAmountID
          FROM Recipes
          INNER JOIN Recipe_Ingredients
            ON  Recipes.RecipeID =
                Recipe_Ingredients.RecipeID
          WHERE Recipe_Ingredients.IngredientID =
                Ingredients.IngredientID);
