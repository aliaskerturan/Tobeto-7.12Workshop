import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_data.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/screens/favorites.dart';
import 'package:flutter_application_1/screens/meals.dart';
import 'package:flutter_application_1/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

//! context objesi = statefull widget => context objesi tüm noktalardan erişilebilir
//! context objesi = stateless widget => context objesi yalnızca  build fonksiyonundan erişilebilir

  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Meals(
              category: category,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bir Kategori Seçin..."),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => Favorites()));
              },
              icon: const Icon(Icons.favorite))
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5),
        children: [
          for (final c in categoryList)
            CategoryCard(
              category: c,
              onCategoryClick: () => _changeScreen(c, context),
            )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: const Text("Home"),
            ),
            ListTile(
              title: const Text("Home2"),
            ),
            ListTile(
              title: const Text("Home3"),
            )
          ],
        ),
      ),
    );
  }
}
