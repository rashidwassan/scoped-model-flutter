import 'package:scoped_model/scoped_model.dart';

class CounterClass extends Model {
  int _count = 0;

  int get count => _count;

  void performIncrement() {
    _count++;
    // updating the state
    notifyListeners();
  }
}
