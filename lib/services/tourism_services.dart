part of 'services.dart';

class TourismServices {
  static Future<List<TourismModel>> getTourisms({http.Client client}) async {
    String url = "http://172.16.102.54:3000/api/tourism/get-tourisms";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      return [];
    }

    var data = json.decode(response.body);
    List result = data;

    return result.map((e) => TourismModel.fromJson(e['data'])).toList();
  }

  static Future<http.Response> addTourism(TourismModel item) async {
    String url = "http://172.16.102.54:3000/api/tourism/add";

    return http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': item.title ?? "",
        'location': item.location ?? "",
        'imageUrl': item.imageUrl ??
            "https://akcdn.detik.net.id/visual/2015/03/05/08834c51-d4e2-418f-933d-73387f82444c_169.jpg?w=650",
        'distance': item.distance ?? "",
        'weather': item.weather ?? "",
        'price': item.price ?? "",
        'description': item.description ?? "",
      }),
    );
  }
}
