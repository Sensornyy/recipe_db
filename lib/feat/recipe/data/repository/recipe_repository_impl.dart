import 'package:recipe_db/feat/recipe/data/data_sources/recipe_local_data_source.dart';
import 'package:recipe_db/feat/recipe/data/data_sources/recipe_remote_data_source.dart';
import 'package:recipe_db/feat/recipe/data/model/recipe_model.dart';
import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/repository/recipe_repository.dart';
import 'package:recipe_db/platform/network_info.dart';

class RecipeRepositoryImpl extends RecipeRepository {
  final RecipeLocalDataSource localDataSource;
  final RecipeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RecipeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<List<RecipeModel>> getRecipes() async {
    return await localDataSource.getRecipes();
  }

  @override
  Future<void> removeRecipe(String label) {
    // TODO: implement removeRecipe
    throw UnimplementedError();
  }

  @override
  Future<void> saveRecipe(RecipeModel recipe) async {
    await localDataSource.saveRecipe(recipe);
  }

  @override
  Future<List<RecipeEntity>> searchRecipes(String query) async {
    if (await networkInfo.isConnected) {
      return await remoteDataSource.searchRecipes(query);
    } else {
      return [];
    }
  }
}
