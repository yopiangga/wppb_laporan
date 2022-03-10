import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wppb_laporan/provider/provider.dart';
import 'package:wppb_laporan/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => BannerProvider()),
          ChangeNotifierProvider(create: (context) => TourismProvider()),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
