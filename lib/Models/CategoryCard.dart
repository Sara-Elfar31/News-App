import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/CategoryModel.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CategoryCard extends StatelessWidget {
   const CategoryCard({super.key, required this.category});
   final categorModel category ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return categoryView(category: category.Text,) ;
        },));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              image:  DecorationImage(image: AssetImage(category.image),fit:BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
          child:  Center(child: Text(category.Text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
        ),
      ),
    );
  }
}
