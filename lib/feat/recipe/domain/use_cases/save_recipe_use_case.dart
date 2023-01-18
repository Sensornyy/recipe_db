import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class SaveRecipeUseCase {
  final RecipeRepository _recipeRepository;

  SaveRecipeUseCase(this._recipeRepository);

  Future<void> call(String label) async {
    return await _recipeRepository.saveRecipe(label);
  }
}
