part of 'pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final banners = Provider.of<BannerProvider>(context).bannerList;
    final tourisms = Provider.of<TourismProvider>(context).tourismList;

    return ListView(
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
                      fontSize: 16,
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
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text("See All", style: TextStyle(color: Color(0xff4265D6))),
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: tourisms.map((el) {
              return GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(el);
                  }))
                },
                child: TourismWidget(el),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
