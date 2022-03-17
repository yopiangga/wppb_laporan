part of 'pages.dart';

List<TourismModel> tourismPlaceList = [
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
  TourismModel(
      title: Faker().lorem.sentence(),
      location: Faker().address.city(),
      imageUrl: 'https://picsum.photos/id/' +
          Random().nextInt(100).toString() +
          '/200/300',
      price: Random().nextInt(100).toString(),
      distance: Random().nextInt(100).toString(),
      weather: "Rainy",
      description: Faker().lorem.sentences(3).join(" ")),
];

class AllTourism extends StatefulWidget {
  AllTourism({Key? key}) : super(key: key);

  @override
  State<AllTourism> createState() => _AllTourismState();
}

class _AllTourismState extends State<AllTourism> {
  @override
  Widget build(BuildContext context) {
    final List<TourismModel> doneTourismPlaceList =
        Provider.of<TourismDoneProvider>(context).tourismDone;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4265D6),
        title: Text('All Tourism'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneTourism(),
                ),
              );
            },
          ),
        ],
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
                      itemCount: tourismPlaceList.length,
                      itemBuilder: ((context, index) {
                        final TourismModel place = tourismPlaceList[index];
                        return TourismCanSelectWidget(place, () {
                          setState(() {
                            if (doneTourismPlaceList.contains(place)) {
                              doneTourismPlaceList.remove(place);
                            } else {
                              doneTourismPlaceList.add(place);
                            }
                          });
                        }, doneTourismPlaceList.contains(place));
                      })))),
        ],
      ),
    );
  }
}
