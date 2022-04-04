part of 'models.dart';

class TourismModel {
  final String id;
  final String title;
  final String location;
  final String imageUrl;
  final String distance;
  final String weather;
  final String price;
  final String description;
  TourismModel(
      {this.id = "",
      this.title = "",
      this.location = "",
      this.imageUrl = "",
      this.distance = "",
      this.weather = "",
      this.price = "",
      this.description = ""});
  factory TourismModel.fromJson(Map<String, dynamic> json, String id) {
    return TourismModel(
      id: id,
      title: json['title'],
      location: json['location'],
      imageUrl: json['imageUrl'],
      distance: json['distance'],
      weather: json['weather'],
      price: json['price'],
      description: json['description'],
    );
  }

  String toString() {
    return '$id, $title, $location, $imageUrl, $distance, $weather, $price, $description';
  }

  List<Object> get props =>
      [id, title, location, imageUrl, distance, weather, price, description];
}
