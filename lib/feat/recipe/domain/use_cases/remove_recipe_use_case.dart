import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class RemoveRecipeUseCase {
  final RecipeRepository recipeRepository;

  RemoveRecipeUseCase(this.recipeRepository);

  Future<void> call(RecipeEntity recipe) async {
    return await recipeRepository.removeRecipe(recipe);
  }
}
