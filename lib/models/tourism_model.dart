part of 'models.dart';

class TourismModel {
  final String title;
  final String location;
  final String imageUrl;
  final String distance;
  final String weather;
  final String price;
  final String description;

  TourismModel(
      {this.title = "",
      this.location = "",
      this.imageUrl = "",
      this.distance = "",
      this.weather = "",
      this.price = "",
      this.description = ""});
}
