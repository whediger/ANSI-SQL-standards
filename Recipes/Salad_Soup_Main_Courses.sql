
SELECT Recipe_Classes.RecipeClassDescription, Recipes.RecipeTitle
FROM Recipe_Classes
LEFT OUTER JOIN Recipes
  ON  Recipe_Classes.RecipeClassID =
      Recipes.RecipeClassID
WHERE Recipe_Classes.RecipeClassDescription IN ('Salad', 'Soup', 'Main course');
