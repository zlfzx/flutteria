import 'package:belajar_flutter/home.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String text;

  HomeAppbar(this.text);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
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
    );
  }
}
