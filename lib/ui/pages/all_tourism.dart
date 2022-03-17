part of 'pages.dart';

class AllTourism extends StatefulWidget {
  const AllTourism({Key? key}) : super(key: key);

  @override
  State<AllTourism> createState() => _AllTourismState();
}

class _AllTourismState extends State<AllTourism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4265D6),
        title: Text('All Tourism'),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xff4265D6),
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
