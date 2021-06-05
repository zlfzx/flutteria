
import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  get count => _count;
  
  void increment() {
    _count += 1;
    notifyListeners();
  }

  void decrement() {
    _count -= 1;
    notifyListeners();
  }
}