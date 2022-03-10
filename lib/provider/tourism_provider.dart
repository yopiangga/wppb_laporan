part of 'provider.dart';

class TourismProvider with ChangeNotifier {
  List<TourismModel> _tourismList = [
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(1000).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy"),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(1000).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy"),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(1000).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy"),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(1000).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy"),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(1000).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy"),
  ];

  List<TourismModel> get tourismList => _tourismList;
}
