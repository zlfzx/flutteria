import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {
  final String text;
  final Function onPressed;

  ButtonRoute(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}