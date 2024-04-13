import 'package:dio/dio.dart';

import 'NewsServicesModel.dart';

class NewsServies
{
  final Dio dio ;

  NewsServies({required this.dio});

  Future<List<ArticleModel>>getNews({required String category}) async
  {
     try {
       Response response = await dio.get('https://newsapi.org/v2/top-headlines?category=$category&country=us&language=en&apiKey=ea431ab3dae945a9ab439af0a3075e18');

       Map<String,dynamic> JsonData = response.data ;

       List <dynamic> articles = JsonData['articles'];

       List<ArticleModel> articlesList =[];

       for(var article in articles)
         {
           ArticleModel articleModel =ArticleModel.fromJson(article);
           articlesList.add(articleModel);
         }
       return articlesList ;
     }catch (e) {
       return [] ;
     }
  }
}