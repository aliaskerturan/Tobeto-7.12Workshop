import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/models/meal.dart';

const categoryList = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.blue),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.red),
  Category(id: "3", name: "Ana Yemekler", color: Colors.yellow),
  Category(id: "4", name: "Tatlılar", color: Colors.white),
];

const mealList = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl:
          "https://www.diyetkolik.com/site_media/media/2019/09/25/mercimek-corbasi.jpg",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: " Katmer",
      imageUrl:
          "https://turkishfoodie.com/wp-content/uploads/2019/04/Katmer.jpg",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"])
];
