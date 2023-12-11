import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_application_1/screens/meal_details.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(meal.name),
        ),
      ),
    );
  }
}
