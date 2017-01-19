
SELECT  Recipe_Classes.RecipeClassDescription,
        (SELECT COUNT(RecipeID)
        FROM Recipes
        WHERE Recipes.RecipeClassID =
              Recipe_Classes.RecipeClassID) AS Recipe_Count
FROM Recipe_Classes;
