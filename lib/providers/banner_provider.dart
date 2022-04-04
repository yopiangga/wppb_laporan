part of 'providers.dart';

class BannerProvider with ChangeNotifier {
  List<BannerModel> get bannerList => _bannerList;

  List<BannerModel> _bannerList = [];
}
