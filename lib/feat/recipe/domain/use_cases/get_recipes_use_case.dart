import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class GetRecipesUseCase {
  final RecipeRepository _recipeRepository;

  GetRecipesUseCase(this._recipeRepository);

  Future<List<RecipeEntity>> call() async {
    return await _recipeRepository.getRecipes();
  }
}
