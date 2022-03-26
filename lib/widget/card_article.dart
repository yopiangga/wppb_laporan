import 'package:flutter/material.dart';
import 'package:wppb_laporan/data/model/article.dart';
import 'package:wppb_laporan/ui/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  CardArticle({@required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Hero(
          tag: article.urlToImage,
          child: Image.network(
            article.urlToImage,
            width: 100,
            height: 100,
          ),
        ),
        title: Text(article.title, maxLines: 2,),
        subtitle: Text(article.author),
        onTap: () => Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: article),
      ),
    );
  }
}
