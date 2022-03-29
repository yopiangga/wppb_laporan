part of 'models.dart';

class BannerModel {
  final String title;
  final String location;
  final String imageUrl;

  BannerModel({this.title = "", this.location = "", this.imageUrl = ""});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      title: json['title'],
      location: json['location'],
      imageUrl: json['imageUrl'],
    );
  }

  List<Object> get props => [title, location, imageUrl];
}
