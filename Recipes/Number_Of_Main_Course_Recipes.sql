
SELECT COUNT(Recipe_Classes.RecipeClassID) AS Main_Course_Count
FROM Recipe_Classes
INNER JOIN Recipes
  ON  Recipe_Classes.RecipeClassID =
      Recipes.RecipeClassID
WHERE Recipe_Classes.RecipeClassDescription = 'Main course';
