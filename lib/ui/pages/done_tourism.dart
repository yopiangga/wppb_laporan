part of 'pages.dart';

class DoneTourism extends StatefulWidget {
  List<TourismModel> doneTourismPlaceList = [];

  DoneTourism(this.doneTourismPlaceList);

  @override
  State<DoneTourism> createState() => _DoneTourismState();
}

class _DoneTourismState extends State<DoneTourism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4265D6),
        title: Text('Done Tourism'),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xff4265D6),
          ),
          SafeArea(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: widget.doneTourismPlaceList.length,
                      itemBuilder: ((context, index) {
                        final TourismModel place =
                            widget.doneTourismPlaceList[index];
                        return TourismDoneWidget(place);
                      })))),
        ],
      ),
    );
  }
}
