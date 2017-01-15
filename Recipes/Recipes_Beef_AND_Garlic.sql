
SELECT RecipesBeef.RecipeTitle
FROM (SELECT Recipes.RecipeID, Recipes.RecipeTitle
    FROM (Recipes
    INNER JOIN Recipe_Ingredients
      ON  Recipes.RecipeID =
          Recipe_Ingredients.RecipeID)
    INNER JOIN Ingredients
      ON  Recipe_Ingredients.IngredientID =
          Ingredients.IngredientID
    WHERE Recipe_Ingredients.IngredientID = 1)
  AS RecipesBeef
INNER JOIN
    (SELECT Recipes.RecipeID, Recipes.RecipeTitle
    FROM (Recipes
    INNER JOIN Recipe_Ingredients
      ON  Recipes.RecipeID =
          Recipe_Ingredients.RecipeID)
    INNER JOIN Ingredients
      ON  Recipe_Ingredients.IngredientID =
          Ingredients.IngredientID
    WHERE Recipe_Ingredients.IngredientID = 9)
  AS RecipesGarlic
ON  RecipesBeef.RecipeID =
    RecipesGarlic.RecipeID;
