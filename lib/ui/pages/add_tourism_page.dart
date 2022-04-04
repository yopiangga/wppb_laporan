part of 'pages.dart';

class AddTourismPage extends StatefulWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _imageUrlController = TextEditingController();
  TextEditingController _distanceController = TextEditingController();
  TextEditingController _weatherController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  State<AddTourismPage> createState() => _AddTourismPageState();
}

class _AddTourismPageState extends State<AddTourismPage> {
  @override
  Widget build(BuildContext context) {
    List<TourismModel> _tourismList =
        Provider.of<TourismProvider>(context).tourismList;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            // height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: mainColor.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(Icons.info_outline, color: mainColor),
              SizedBox(width: 10),
              Expanded(
                child: Text("Complete the place data to add",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
              )
            ]),
          ),
          SizedBox(height: 30),
          TextField(
            controller: widget._titleController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Title location",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._locationController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Location place",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._imageUrlController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Image URL",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._distanceController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Distance",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._weatherController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Weather",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._priceController,
            onChanged: (text) {},
            maxLength: 40,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: mainColor),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelStyle: TextStyle(color: accentColor2),
              labelText: "Price",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: widget._descriptionController,
            onChanged: (text) {},
            maxLength: 535,
            maxLines: 8,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: mainColor),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelStyle: TextStyle(color: accentColor2),
                labelText: "Description Place"),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () async {
              TourismModel item = new TourismModel(
                  title: widget._titleController.text,
                  location: widget._locationController.text,
                  imageUrl: widget._imageUrlController.text,
                  distance: widget._distanceController.text,
                  weather: widget._weatherController.text,
                  price: widget._priceController.text,
                  description: widget._descriptionController.text);
              var result = await TourismServices.addTourism(item);
              _tourismList.add(item);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Add Place",
                textAlign: TextAlign.center,
                style: whiteTextFont.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
