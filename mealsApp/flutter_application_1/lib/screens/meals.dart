import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_data.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_application_1/providers/meals_provider.dart';
import 'package:flutter_application_1/widgets/meal_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Meals extends ConsumerWidget {
  const Meals({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Meal> mealsFromState = ref.watch(mealsProvider);

    List<Meal> meals =
        mealList.where((e) => e.categoryId == category.id).toList();

    Widget widget = ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: ((context, index) => MealCard(meal: meals[index])));

    if (meals.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride hiç bir tarif bulunamadı..."),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
      ),
      body: widget,
    );
  }
}
