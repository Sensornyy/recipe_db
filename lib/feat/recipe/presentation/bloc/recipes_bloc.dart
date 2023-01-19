import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_db/feat/recipe/domain/entity/recipe_entity.dart';
import 'package:recipe_db/feat/recipe/domain/use_cases/get_recipes_use_case.dart';
import 'package:recipe_db/feat/recipe/domain/use_cases/search_recipes_use_case.dart';

part 'recipes_event.dart';
part 'recipes_state.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final SearchRecipesUseCase searchRecipes;
  final GetRecipesUseCase getRecipes;

  RecipesBloc(this.searchRecipes, this.getRecipes) : super(RecipesInitial()) {
    on<SearchRecipesEvent>((event, emit) async {
      emit(RecipesLoading());

      final recipes = await searchRecipes(event.query);

      emit(RecipesLoaded(recipes));
    });

    on<GetRecipesEvent>((event, emit) {
      emit(RecipesLoading());
      final recipes = getRecipes();
      emit(RecipesLoaded(recipes as List<RecipeEntity>));
    });
  }
}
