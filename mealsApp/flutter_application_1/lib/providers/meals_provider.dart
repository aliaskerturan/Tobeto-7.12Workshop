import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "2",
        categoryId: "4",
        name: " Katmer",
        imageUrl:
            "https://turkishfoodie.com/wp-content/uploads/2019/04/Katmer.jpg",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"])
  ];
});

// 