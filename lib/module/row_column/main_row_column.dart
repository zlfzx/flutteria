import 'package:belajar_flutter/home.dart';
import 'package:flutter/material.dart';

class MainRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => Home(),
              ),
            );
          },
        ),
      ),
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
