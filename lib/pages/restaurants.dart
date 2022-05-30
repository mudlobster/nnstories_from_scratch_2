import 'package:flutter/material.dart';

class UserRestaurants extends StatelessWidget {
  const UserRestaurants({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Рестораны',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}