import 'package:belajar_flutter/module/row_column/main_row_column.dart';
import 'package:belajar_flutter/widgets/button_route.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutteria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonRoute('Row Column', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => MainRowColumn(),
                ),
              );
            }),
            ButtonRoute('Provider', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => MainRowColumn(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
