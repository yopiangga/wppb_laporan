import 'package:flutter/material.dart';
import 'package:wppb_laporan/data/model/article.dart';
import 'package:wppb_laporan/ui/article_web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  ArticleDetailPage({@required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: article.urlToImage,
                child: Image.network(article.urlToImage)),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(article.description,
                        style: Theme.of(context).textTheme.bodyText2),
                    Divider(color: Colors.grey),
                    Text(
                      article.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Divider(color: Colors.grey),
                    Text("Date : ${article.publishedAt}",
                        style: Theme.of(context).textTheme.caption),
                    Divider(color: Colors.grey),
                    Text("Author : ${article.author}",
                        style: Theme.of(context).textTheme.caption),
                    Divider(color: Colors.grey),
                    Text(
                      article.content ?? "",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Divider(color: Colors.grey),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ArticleWebView.routeName,
                              arguments: article.url);
                        },
                        child: Text(article.url))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
