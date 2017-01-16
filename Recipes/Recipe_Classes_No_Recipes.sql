
SELECT Recipe_Classes.RecipeClassDescription
FROM Recipes
RIGHT OUTER JOIN Recipe_Classes
  ON  Recipes.RecipeClassID =
      Recipe_Classes.RecipeClassID
WHERE Recipes.RecipeClassID IS NULL;
