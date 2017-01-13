
SELECT RecipeTitle, Preparation, RecipeClassDescription
FROM Recipe_Classes
INNER JOIN Recipes
ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID;
