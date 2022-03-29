part of 'providers.dart';

class TourismProvider with ChangeNotifier {
  List<TourismModel> get tourismList => _tourismList;

  List<TourismModel> _tourismList = [
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy",
        description: Faker().lorem.sentences(3).join(" ")),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy",
        description: Faker().lorem.sentences(3).join(" ")),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy",
        description: Faker().lorem.sentences(3).join(" ")),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy",
        description: Faker().lorem.sentences(3).join(" ")),
    TourismModel(
        title: Faker().lorem.sentence(),
        location: Faker().address.city(),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300',
        price: Random().nextInt(100).toString(),
        distance: Random().nextInt(100).toString(),
        weather: "Rainy",
        description: Faker().lorem.sentences(3).join(" ")),
  ];
}
