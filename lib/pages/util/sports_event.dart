import 'package:flutter/material.dart';

class SportEvent extends StatelessWidget {
  final String eventName;
  final String date;
  final String time;
  final String location;

  SportEvent({required this.eventName, required this.date, required this.time, required this.location});

  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(eventName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(date),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(time),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.location_on),
              Text(  location)
            ],
                ),
          ),
        ],
      ),
    );
  }
  }