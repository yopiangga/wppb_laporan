part of 'pages.dart';

class DeleteTourismPage extends StatefulWidget {
  const DeleteTourismPage({Key key}) : super(key: key);

  @override
  State<DeleteTourismPage> createState() => _DeleteTourismPageState();
}

class _DeleteTourismPageState extends State<DeleteTourismPage> {
  @override
  Widget build(BuildContext context) {
    List<TourismModel> _tourism =
        Provider.of<TourismProvider>(context).tourismList;

    return Scaffold(
        appBar: AppBar(
          title: Text("Delete Tourism"),
          backgroundColor: Colors.white,
          foregroundColor: accentColor2,
          elevation: 0,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: _tourism.length,
              itemBuilder: (_, index) => Container(
                margin: EdgeInsets.only(
                  top: index == 0 ? defaultMargin : 0,
                  bottom: index == _tourism.length - 1 ? defaultMargin : 0,
                ),
                child: TourismDeleteWidget(_tourism[index], () async {
                  var result =
                      await TourismServices.deleteTourism(_tourism[index].id);
                  _tourism.removeAt(index);
                  setState(() {});
                }),
              ),
            )));
  }
}
