import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/data.models/news_model.dart';

class News extends StatelessWidget {
  final NewsModel newsModel;

  const News(
  {Key? key, required this.newsModel
  })
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(newsModel.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(height: 10),
                    // Text(newsModel.id.toString(), style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                    Text(newsModel.text,style: TextStyle(color: Colors.grey[800]),),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              height: 300,
              child: Center(child: Expanded(child: Card(child: Image.network(newsModel.photoURL),))),
            ),
            SizedBox(height: 30),
          ],

      ),
    );
  }
}
