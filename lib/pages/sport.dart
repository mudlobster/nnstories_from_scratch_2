import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/pages/util/sports_event.dart';

class UserSport extends StatelessWidget {
  const UserSport({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            children: [
              SizedBox(child:
              Container(
                  width: 80,
                  height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.green[400],),
                  child: Center(child:
                  Text('Футбол', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  )
              )
              ),
              SizedBox(child:
              Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.grey[300],),
                  child: Center(child: Text('Волейбол')))),
              SizedBox(child:
              Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.grey[300],),
                  child: Center(child: Text('Литрбол')))),
              SizedBox(child:
              Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.grey[300],),
                  child: Center(child: Text('Догонялки')))),
            ],
          ),
        ),
        Column(
              children: [
                SportEvent(eventName: 'Дворовый матч', date: '10 июня', time: 'до обеда', location: 'Автозаводские дворы'),
                SportEvent(eventName: 'Стенка на стенку', date: '14 июня', time: 'до последнего', location: 'За гаражами'),
                SportEvent(eventName: 'Кожаный мяч', date: '16 июня', time: '14:40', location: 'Площадь Минина'),
                SportEvent(eventName: 'Дошкольная лига', date: '18 июня', time: 'весь день', location: 'Школа №228'),
                SportEvent(eventName: 'ФК НН против БК НН', date: '26 июня', time: '12:00', location: 'Стадион НН'),
                SportEvent(eventName: 'Футбол под пивом', date: '4 июля', time: 'с утречка', location: 'Канавинский район'),
                SportEvent(eventName: 'Женский матч', date: '7 июля', time: '15:00', location: 'Стадион НН'),
                SportEvent(eventName: 'Кибер-футбол', date: '11 июля', time: '11:00', location: 'Удаленно'),
              ],
            ),
      ],
    );
  }
}