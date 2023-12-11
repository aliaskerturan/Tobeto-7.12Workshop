import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_application_1/providers/favorites_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Meal> favorites = ref.watch(favoriteMealsNotifier);
    return Scaffold(
      appBar: AppBar(title: Text("Favoriler")),
      body: ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (ctx, index) => Text(favorites[index].name)),
    );
  }
}
