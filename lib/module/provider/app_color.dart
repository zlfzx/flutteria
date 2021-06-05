
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppColor extends ChangeNotifier {
  bool _isLightBlue = false;
  List<Color> colors= [
    Colors.lightGreen,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.indigoAccent
  ];

  get isLightBlue => _isLightBlue;
  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color color() {
    if (_isLightBlue) {
      return Colors.lightBlue;
    }

    return Colors.amber;
  }

  Color randomColor(index) {
    if (index > 10) {
      index = index % 2;
      print('lebih dari 10 $index');
    }
    else if(index < 1) {
      return this.color();
    }

    if (index != 0) {
      index -= 1;
    }
    
    print(index);
    return colors[index];
  }
}