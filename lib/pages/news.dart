import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/data.models/db_requests.dart';
import 'package:nnstories_from_scratch/data.models/news_model.dart';
import 'package:nnstories_from_scratch/pages/util/news_widget.dart';

class UserNews extends StatefulWidget {
  const UserNews({Key? key}) : super(key: key);

  @override
  State<UserNews> createState() => _UserNewsState();
}

class _UserNewsState extends State<UserNews> {
  List<NewsModel> newsModelList = [];

  Future<void> getNewsFromDB() async {
    newsModelList = await getNewsFromDBTest();
    setState(() {

    });
  }

  @override
  void initState() {
    getNewsFromDB();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return newsModelList.isEmpty?
        Center(
          child: CircularProgressIndicator(),
        ):
         ListView.builder(itemCount: newsModelList.length,
             itemBuilder: (BuildContext context, int index) {
           return News(newsModel: newsModelList[index]);
        });
  }
}