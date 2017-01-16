
SELECT  Recipe_Classes.RecipeClassDescription,
        Recipes.RecipeTitle
FROM Recipe_Classes
LEFT OUTER JOIN Recipes
  ON  Recipe_Classes.RecipeClassID =
      Recipes.RecipeClassID;
