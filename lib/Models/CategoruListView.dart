import 'package:flutter/cupertino.dart';

import 'CategoryCard.dart';
import 'CategoryModel.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List <categorModel>categories = const [
    categorModel(image: 'assets/technology.jpeg', Text: 'Sports'),
    categorModel(image: 'assets/technology.jpeg', Text: 'Entertainment'),
    categorModel(image: 'assets/technology.jpeg', Text: 'General'),
    categorModel(image: 'assets/technology.jpeg', Text: 'Health'),
    categorModel(image: 'assets/technology.jpeg', Text: 'Business'),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index],);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
