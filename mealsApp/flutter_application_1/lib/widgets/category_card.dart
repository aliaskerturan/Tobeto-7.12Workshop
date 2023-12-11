import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.category, required this.onCategoryClick})
      : super(key: key);
  final Category category;
  final void Function() onCategoryClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: category.color,
      onTap: () {
        onCategoryClick();
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.5),
            category.color.withOpacity(0.9)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(category.name),
      ),
    );
  }
}
