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
}
