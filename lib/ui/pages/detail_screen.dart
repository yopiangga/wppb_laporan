part of 'pages.dart';

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
              child: Image.asset(
                'assets/images/image1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.calendar_today),
                      Text("Open Every Day")
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.access_time),
                      Text("08.00 - 16.00")
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.attach_money),
                      Text("Rp 10.000,-")
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Text(
                  Faker().lorem.sentences(2).join(" "),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                )),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.network(
                      "https://picsum.photos/id/237/300/200",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.network(
                      "https://picsum.photos/id/238/300/200",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.network(
                      "https://picsum.photos/id/239/300/200",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.network(
                      "https://picsum.photos/id/240/300/200",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.asset(
                      "assets/images/image1.jpg",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
