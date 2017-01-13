
SELECT R.RecipeTitle, R.Preparation, RCFiltered.ClassName
FROM (SELECT RecipeClassID,
      RecipeClassDescription AS ClassName
      FROM Recipe_Classes RC
      WHERE RC.RecipeClassDescription = 'Main course'
      OR RC.RecipeClassDescription = 'Dessert')
      RCFiltered
INNER JOIN Recipes R
ON RCFiltered.RecipeClassID = R.RecipeClassID;
