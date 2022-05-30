import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String title;
  //add image
  final imageColor;
  final String author;
  final String newsText;

  News({required this.title, required this.imageColor, required this.author, required this.newsText});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text(author,style: TextStyle(color: Colors.grey[700]),),
              ],
            ),
          ),
          Container(
            height: 200,
            color: imageColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Row(
                children: [
                  Expanded(child:Text(newsText)),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
