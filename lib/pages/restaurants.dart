import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/pages/util/restaurant.dart';

class UserRestaurants extends StatelessWidget {
  const UserRestaurants({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      // mainAxisSpacing: 5,
      // crossAxisSpacing: 5,
      children: [
        Restaurant(restName: 'Совок', imageColor: Colors.lightGreen[200], price: 500),
        Restaurant(restName: 'Салют', imageColor: Colors.deepOrange[200], price: 400),
        Restaurant(restName: 'Митрич', imageColor: Colors.deepPurple[200], price: 600),
        Restaurant(restName: 'Библиотека', imageColor: Colors.redAccent[200], price: 2000),
        Restaurant(restName: 'Карма +1', imageColor: Colors.amber[200], price: 1000),
        Restaurant(restName: 'Юла', imageColor: Colors.indigo[200], price: 600),
        Restaurant(restName: 'Чебурек', imageColor: Colors.brown[200], price: 800),
      ],

    );
  }
}