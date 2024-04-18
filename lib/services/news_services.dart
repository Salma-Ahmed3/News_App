import 'package:dio/dio.dart';
import 'package:news_app/models/article_modle.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModle>> getTopHeadLine({required String category}) async {
    // Response Or var
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6232224643754f58a37d09b75fb48989&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModle> articaleslist = [];

      for (var article in articles) {
        ArticleModle articleModle = ArticleModle.fromJson(article);
        articaleslist.add(articleModle);
      }

      return articaleslist;
    } catch (e) {
      return [];
    }
  }
}
