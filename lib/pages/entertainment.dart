import 'package:flutter/material.dart';

class UserEntertainment extends StatelessWidget {
  const UserEntertainment({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Спорт',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}