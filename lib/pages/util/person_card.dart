import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Person extends StatelessWidget {

  final String name;
  final String interests;
  final imageColor;

  Person({required this.name, required this.interests, required this.imageColor});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: imageColor,
              ),
                width: 100,
                height: 100,
                ),
            Column(
                children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                Text(interests),
              ],),
            Icon(Icons.favorite_border),
          ],
        ),
      ),
    );
  }
}
