part of 'widgets.dart';

class TourismDeleteWidget extends StatelessWidget {
  final TourismModel e;
  Function onTap;
  TourismDeleteWidget(this.e, this.onTap);

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
              child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 24,
              )),
            ),
          )),
        ],
      ),
    );
  }
}
