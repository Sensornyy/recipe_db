import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';

class GetRecipeUseCase {
  final RecipeRepository recipeRepository;

  GetRecipeUseCase(this.recipeRepository);

  Future<List<RecipeEntity>> call() async {
    return await recipeRepository.getRecipes();
  }
}
