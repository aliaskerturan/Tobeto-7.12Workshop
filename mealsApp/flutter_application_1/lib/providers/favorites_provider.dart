import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleMealFavorite(Meal meal) {
    /*
    if (state.contains(meal)) {
      state.remove(meal);
    } else {
      state.add(meal);
    }
    */

    if (state.contains(meal)) {
      state = state.where((element) => element.id != meal.id).toList();
    } else {
      // ... => spread operator
      state = [...state, meal];
    }
  }
}

// Provider'ın oluşturulması
final favoriteMealsNotifier =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
