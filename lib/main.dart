import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text("Open Every Day")
                    ],
                  )
                ],
              ),
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Text(
                  Faker().lorem.sentences(5).join(" "),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
