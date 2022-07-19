import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Home',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      )),
    );
  }
}
