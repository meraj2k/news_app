import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

const API_KEY = '9aafdece55514b529865b2751bda7e3e';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=9aafdece55514b529865b2751bda7e3e";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            publishedAt: element['publishedAt'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=9aafdece55514b529865b2751bda7e3e";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            publishedAt: element['publishedAt'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
