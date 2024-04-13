import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../NewsServices/NewsServices.dart';
import '../NewsServices/NewsServicesModel.dart';
import 'NewsTile.dart';

class NewsListTile extends StatefulWidget {
  final String category ;
  const NewsListTile({super.key, required this.category});

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  List<ArticleModel> articles=[];


  @override
  void initState()  {
    super.initState();
    getNews();
  }
  Future<void> getNews()async
  {
   articles = await NewsServies(dio: Dio()).getNews(category: widget.category);
   setState(() {
   });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NewsTile(articleModel: articles [index],),
        );
      },
      itemCount: articles.length,
    );
  }
}
