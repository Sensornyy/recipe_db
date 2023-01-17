import 'package:recipe_db/feat/recipe/data/model/recipe_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class RecipeLocalDataSource {
  Future<List<RecipeModel>> getRecipes();

  Future<void> addRecipe(RecipeModel recipe);

  Future<void> removeRecipe(RecipeModel recipe);

  Future<void> saveRecipe(RecipeModel recipe);
}

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final Database db;

  RecipeLocalDataSourceImpl(this.db);

  @override
  Future<void> addRecipe(RecipeModel recipe) async {
    await db.insert('recipes', recipe.toJson());
  }

  @override
  Future<List<RecipeModel>> getRecipes() {
    // TODO: implement getRecipes
    throw UnimplementedError();
  }

  @override
  Future<void> removeRecipe(RecipeModel recipe) {
    // TODO: implement removeRecipe
    throw UnimplementedError();
  }

  @override
  Future<void> saveRecipe(RecipeModel recipe) {
    // TODO: implement saveRecipe
    throw UnimplementedError();
  }
  
}
