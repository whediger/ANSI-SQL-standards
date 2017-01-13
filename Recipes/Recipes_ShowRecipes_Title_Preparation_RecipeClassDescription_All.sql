
SELECT Recipes.RecipeTitle, Recipes.Preparation, Recipe_Classes.RecipeClassDescription
FROM Recipe_Classes
INNER JOIN Recipes
USING (RecipeClassID);
