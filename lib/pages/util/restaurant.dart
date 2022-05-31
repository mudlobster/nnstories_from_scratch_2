import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  final String restName;
  final imageColor;
  final int price;

  Restaurant({required this.restName, required this.imageColor, required this.price});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                color: imageColor,
                borderRadius: BorderRadius.circular(8)),
          child: Align(
            alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(restName, style: TextStyle(color: Colors.grey[100], fontSize: 20, fontWeight: FontWeight.bold),),
              )),
            height: 100,
            width: 100,

        ),
          Positioned(
            bottom: -1,
              right: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$price₽',
                style: TextStyle(color: Colors.grey[200]),),
              )),
      ],
      ),
    );
  }
}
