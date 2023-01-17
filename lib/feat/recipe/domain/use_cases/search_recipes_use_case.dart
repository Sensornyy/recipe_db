import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class SearchRecipesUseCase {
  final RecipeRepository _recipeRepository;

  SearchRecipesUseCase(this._recipeRepository);

  Future<List<RecipeEntity>> call(String query) async {
    return await _recipeRepository.searchRecipes(query);
  }
}