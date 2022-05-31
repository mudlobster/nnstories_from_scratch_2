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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text(author,style: TextStyle(color: Colors.grey[700]),),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
                color: imageColor
            ),
            height: 200,
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
