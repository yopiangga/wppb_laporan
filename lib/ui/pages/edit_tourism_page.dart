part of 'pages.dart';

class EditTourismPage extends StatefulWidget {
  const EditTourismPage({Key key}) : super(key: key);

  @override
  State<EditTourismPage> createState() => _EditTourismPageState();
}

class _EditTourismPageState extends State<EditTourismPage> {
  @override
  Widget build(BuildContext context) {
    List<TourismModel> _tourism =
        Provider.of<TourismProvider>(context).tourismList;

    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Tourism"),
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
                child: GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => EditTourismDetailPage(
                          tourism: _tourism[index],
                        ),
                      ));
                      setState(() {});
                    },
                    child: TourismWidget(_tourism[index])),
              ),
            )));
  }
}
