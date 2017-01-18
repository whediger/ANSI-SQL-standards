
SELECT Recipes.RecipeTitle
FROM  Recipes
WHERE Recipes.RecipeID IN
  (SELECT Recipe_Ingredients.RecipeID
  FROM  Recipe_Ingredients
  WHERE Recipe_Ingredients.IngredientID =
        ANY
        (SELECT Ingredients.IngredientID
        FROM  Ingredients
        WHERE Ingredients.IngredientName
        IN  ('Beef', 'Garlic')));
