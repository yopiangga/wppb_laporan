part of 'pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int activeMenu = 0;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final banners = Provider.of<BannerProvider>(context).bannerList;
    final tourisms = Provider.of<TourismProvider>(context).tourismList;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1A2E35).withOpacity(0.05),
                  spreadRadius: 3,
                  blurRadius: 12,
                  offset: Offset(3, 0), // changes position of shadow
                ),
              ]),
          child: Row(
            children: [
              BottomNavBar(icon: Icons.folder, index: 0),
              BottomNavBar(icon: Icons.settings, index: 1),
              BottomNavBar(icon: Icons.bar_chart, index: 2),
              BottomNavBar(icon: Icons.bar_chart, index: 2),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50, shape: BoxShape.circle),
                        child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/alfian_prisma_yopiangga.jpg"),
                                  fit: BoxFit.fill,
                                ))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "Hi Alfian Prisma Y!",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Where would you like to go today?",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: banners.map((el) {
                      return BannerWidget(el);
                    }).toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Best Time Now",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text("See All",
                            style: TextStyle(color: Color(0xff4265D6))),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: tourisms.map((el) {
                      return GestureDetector(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(el);
                          }))
                        },
                        child: TourismWidget(el),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Text("Page 2"),
            Text("Page 3"),
            Text("Page 4"),
          ],
        ),
      ),
    );
  }

  GestureDetector BottomNavBar({IconData icon = Icons.home, int index = 0}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeMenu = index;
          _tabController.animateTo(index);
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: index == activeMenu
                  ? Color(0xff4265D6).withOpacity(0.1)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            child: Icon(icon,
                size: 28,
                color: index == activeMenu
                    ? Color(0xff4265D6)
                    : Color(0xff293855).withOpacity(0.7)),
          ),
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  final BannerModel e;
  BannerWidget(BannerModel this.e);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: MediaQuery.of(context).size.width * 4 / 6,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(e.imageUrl),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.title,
                      maxLines: 1,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      e.location,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class TourismWidget extends StatelessWidget {
  final TourismModel e;
  TourismWidget(this.e);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(e.imageUrl), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e.title,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(e.location + " . " + e.distance + " KM",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black54)),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(e.weather,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          )),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Text(
              "\$ " + e.price,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
