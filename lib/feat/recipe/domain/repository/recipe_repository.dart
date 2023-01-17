import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';

abstract class RecipeRepository {
  Future<List<RecipeEntity>> getRecipes();

  void addRecipe(RecipeEntity recipe);

  void removeRecipe(RecipeEntity recipe);

  void saveRecipe(RecipeEntity recipe);
}
