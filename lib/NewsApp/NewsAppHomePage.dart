import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../Models/CategoruListView.dart';
import '../Models/NewsListTile.dart';

class NewsAppHomePage extends StatelessWidget {
  const NewsAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,
       elevation: 0,
       title: const Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text('News',style: TextStyle(color: Colors.black),),
         Text('Cloud',style: TextStyle(color: Colors.orange),)
       ],),
       ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        //scroll whole screen
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32,)),
            SliverToBoxAdapter(child: NewsListTile(category: 'general',)),
          ],
        ),
      ),
    );
  }
}

