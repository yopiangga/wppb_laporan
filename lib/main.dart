import 'package:flutter/material.dart';
import 'package:wppb_laporan/data/model/article.dart';
import 'package:wppb_laporan/ui/article_detail_page.dart';
import 'package:wppb_laporan/ui/article_list_page.dart';
import 'package:wppb_laporan/ui/article_web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ArticleListPage(),
        '/article_web_view': (context) => ArticleWebView(
            url: ModalRoute.of(context).settings.arguments as String),
        '/article_detail': (context) => ArticleDetailPage(
            article: ModalRoute.of(context).settings.arguments as Article),
      },
    );
  }
}
