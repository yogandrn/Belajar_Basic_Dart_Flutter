import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Profile',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      )),
    );
  }
}
