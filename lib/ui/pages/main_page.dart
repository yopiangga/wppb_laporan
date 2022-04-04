part of 'pages.dart';

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int activeMenu = 0;
  TabController _tabController;

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
              BottomNavBar(icon: Icons.home, index: 0),
              BottomNavBar(icon: Icons.add_a_photo, index: 1),
              BottomNavBar(icon: Icons.format_list_bulleted, index: 2),
              BottomNavBar(icon: Icons.delete, index: 3),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            AddTourismPage(),
            EditTourismPage(),
            DeleteTourismPage(),
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
