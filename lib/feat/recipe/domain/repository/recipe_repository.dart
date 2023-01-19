import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';

abstract class RecipeRepository {
  Future<List<RecipeEntity>> searchRecipes(String query);

  Future<List<RecipeEntity>> getRecipes();

  Future<void> removeRecipe(String label);

  Future<void> saveRecipe(RecipeEntity recipe);
}
