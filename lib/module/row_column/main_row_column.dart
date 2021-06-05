import 'package:belajar_flutter/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class MainRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar('Row Column'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Column 1'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Row 1'),
              Text('Row 2'),
            ],
          ),
        ],
      ),
    );
  }
}
