import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class AddRecipeUseCase {
  final RecipeRepository recipeRepository;

  AddRecipeUseCase(this.recipeRepository);

  Future<void> call(RecipeEntity recipe) async {
    return await recipeRepository.addRecipe(recipe);
  }
}
