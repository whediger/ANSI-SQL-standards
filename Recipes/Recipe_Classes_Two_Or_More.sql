
SELECT  Recipe_Classes.RecipeClassDescription AS Recipe_Class,
        COUNT(Recipes.RecipeTitle) AS Recipe_Count
FROM    Recipe_Classes
RIGHT OUTER JOIN Recipes
  ON  Recipe_Classes.RecipeClassID =
      Recipes.RecipeClassID
GROUP BY Recipe_Class
HAVING Recipe_Count >= 2
