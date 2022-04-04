part of 'providers.dart';

class TourismProvider with ChangeNotifier {
  List<TourismModel> get tourismList => _tourismList;

  List<TourismModel> _tourismList = [];
}
