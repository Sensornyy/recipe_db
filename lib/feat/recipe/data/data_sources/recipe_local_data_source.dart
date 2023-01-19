import 'package:recipe_db/feat/recipe/data/model/recipe_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class RecipeLocalDataSource {
  Future<List<RecipeModel>> getRecipes();

  Future<void> removeRecipe(String label);

  Future<void> saveRecipe(RecipeModel recipe);
}

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final Database db;

  RecipeLocalDataSourceImpl(this.db);

  @override
  Future<void> saveRecipe(RecipeModel recipe) async {
    await db.insert('RECIPES', recipe.toJson());
  }

  @override
  Future<List<RecipeModel>> getRecipes() async {
    var recipes = await db.query('RECIPES');

    return recipes.map((r) => RecipeModel.fromJson(r)).toList();
  }

  @override
  Future<void> removeRecipe(String label) async {
    await db.delete('RECIPES', where: 'label = ?', whereArgs: [label]);
  }
}
