part of 'services.dart';

class BannerServices {
  static Future<List<BannerModel>> getBanners({http.Client client}) async {
    String url = "http://172.16.102.54:3000/api/banner/get-banners";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      return [];
    }

    var data = json.decode(response.body);
    List result = data;

    return result.map((e) => BannerModel.fromJson(e['data'])).toList();
  }
}
