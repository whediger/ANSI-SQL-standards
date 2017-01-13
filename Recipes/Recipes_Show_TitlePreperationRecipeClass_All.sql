
SELECT Recipes.RecipeTitle, Recipes.Preparation, Recipe_Classes.RecipeClassDescription
FROM Recipe_Classes
INNER JOIN Recipes
ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID;
