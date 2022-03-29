part of 'providers.dart';

class TourismDoneProvider extends ChangeNotifier {
  List<TourismModel> _tourismDone = [];

  List<TourismModel> get tourismDone => _tourismDone;

  TourismDoneProvider() {
    _tourismDone = [];
  }

  void addTourismDone(TourismModel tourism) {
    _tourismDone.add(tourism);
    notifyListeners();
  }

  void removeTourismDone(TourismModel tourism) {
    _tourismDone.remove(tourism);
    notifyListeners();
  }

  void removeAllTourismDone() {
    _tourismDone.clear();
    notifyListeners();
  }
}
