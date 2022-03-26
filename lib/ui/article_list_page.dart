import 'package:flutter/material.dart';
import 'package:wppb_laporan/data/api/api_service.dart';
import 'package:wppb_laporan/data/model/article.dart';
import 'package:wppb_laporan/widget/card_article.dart';

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({Key key}) : super(key: key);

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  Future<ArticleResult> _article;

  void initState() {
    super.initState();
    _article = ApiService().topHeadLines();
  }

  @override
  Widget _buildList(BuildContext context) {
    return FutureBuilder(
        future: _article,
        builder: (context, AsyncSnapshot<ArticleResult> snapshot) {
          var state = snapshot.connectionState;
          if (state != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.articles.length,
                itemBuilder: (context, index) {
                  var article = snapshot.data.articles[index];
                  return CardArticle(article: article);
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else {
              return Center(
                child: Text("No Data"),
              );
            }
          }
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Headlines"),
      ),
      body: _buildList(context),
    );
  }
}
