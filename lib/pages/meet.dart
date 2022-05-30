import 'package:flutter/material.dart';

class UserMeet extends StatelessWidget {
  const UserMeet({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Знакомства',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}