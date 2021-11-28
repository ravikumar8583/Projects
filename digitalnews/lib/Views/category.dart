import 'package:digitalnews/Model/article_model.dart';
import 'package:digitalnews/helper/news.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget {
  const CategoryNews({Key key}) : super(key: key);

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  bool _loading = true;
  List<ArticleModel> cataryView = List();
  @override
  void initState() {
    super.initState();
  }

  getCategoryNews() async {
    News newClass = News();
    await newClass.getNews();
    cataryView = newClass.getNews();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Digital"),
            Text(
              "News",
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: ListView.builder(itemBuilder: (context, index) {}),
            )
          ],
        ),
      ),
    );
  }
}
