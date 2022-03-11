part of 'provider.dart';

class BannerProvider with ChangeNotifier {
  List<BannerModel> get bannerList => _bannerList;

  List<BannerModel> _bannerList = [
    BannerModel(
        title: Faker().lorem.words(3).join(' '),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300/',
        location: Faker().address.city()),
    BannerModel(
        title: Faker().lorem.words(3).join(' '),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300/',
        location: Faker().address.city()),
    BannerModel(
        title: Faker().lorem.words(3).join(' '),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300/',
        location: Faker().address.city()),
    BannerModel(
        title: Faker().lorem.words(3).join(' '),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300/',
        location: Faker().address.city()),
    BannerModel(
        title: Faker().lorem.words(3).join(' '),
        imageUrl: 'https://picsum.photos/id/' +
            Random().nextInt(100).toString() +
            '/200/300/',
        location: Faker().address.city()),
  ];
}
