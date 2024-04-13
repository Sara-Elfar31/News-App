import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/NewsServices/NewsServicesModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          child:Image.network(articleModel.image??'',
            width: double.infinity,
            fit: BoxFit.cover,),
        ),
        const SizedBox(height: 10,),
         Text(articleModel.title??'',style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
         Text(articleModel.subtitle??'',style: TextStyle(color: Colors.grey),)
      ],
    );
  }
}
