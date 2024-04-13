import 'package:flutter/material.dart';

import '../Models/NewsListTile.dart';

class categoryView extends StatelessWidget {
  const categoryView({super.key, required this.category});
 final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: NewsListTile(category: category,)),
        ],
      ),
    );
  }
}
