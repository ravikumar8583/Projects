import 'package:cached_network_image/cached_network_image.dart';
import 'package:digitalnews/Model/article_model.dart';
import 'package:digitalnews/Model/catagory_model.dart';
import 'package:digitalnews/Views/article_view.dart';
import 'package:digitalnews/helper/data.dart';
import 'package:digitalnews/helper/news.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading = true;
  List<CategoryMOdel> catary = List();
  List<ArticleModel> article = List();
  @override
  void initState() {
    super.initState();
    catary = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    article = newsClass.news;
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
      body: _loading
          ? Center(
              child: Container(
              child: CircularProgressIndicator(),
            ))
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      //categoryy
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CategoryTile(
                            imageurl: catary[index].imageUrl,
                            categoryName: catary[index].categoryName,
                          );
                        },
                        itemCount: catary.length,
                      ),
                    ),
                    //loading
                    Container(
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imageUrl: article[index].urlToImage,
                            desc: article[index].description,
                            title: article[index].title,
                            url: article[index].url,
                          );
                        },
                        itemCount: article.length,
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageurl, categoryName;

  const CategoryTile({Key key, this.imageurl, this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imageurl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                categoryName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, desc, title, url;
  const BlogTile(
      {Key key,
      @required this.imageUrl,
      @required this.desc,
      @required this.title,
      @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ArticleView(
            blogUrl: url,
          );
        }));
      },
      child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.network(imageUrl)),
              Text(
                title,
                style: TextStyle(fontSize: 17, color: Colors.black87),
              ),
              SizedBox(
                height: 7,
              ),
              Text(desc, style: TextStyle(color: Colors.black54))
            ],
          )),
    );
  }
}
