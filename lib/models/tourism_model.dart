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
  factory TourismModel.fromJson(Map<String, dynamic> json) {
    return TourismModel(
      title: json['title'],
      location: json['location'],
      imageUrl: json['imageUrl'],
      distance: json['distance'],
      weather: json['weather'],
      price: json['price'],
      description: json['description'],
    );
  }

  List<Object> get props =>
      [title, location, imageUrl, distance, weather, price, description];
}
