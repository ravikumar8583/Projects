import 'dart:convert';

import 'package:digitalnews/Model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  String url;
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    url =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=cb97f97bb0444ad6a2fd9c005b78bb7c";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      // jsonData["article"].forEach((element) {
      for (dynamic element in jsonData["articles"]) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element["title"],
              description: element["description"],
              author: element["author"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"]);
          news.add(articleModel);
        }
      }
    }
  }
}



class CategoryNews {
  String url;
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    url =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=cb97f97bb0444ad6a2fd9c005b78bb7c";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      // jsonData["article"].forEach((element) {
      for (dynamic element in jsonData["articles"]) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element["title"],
              description: element["description"],
              author: element["author"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"]);
          news.add(articleModel);
        }
      }
    }
  }
}