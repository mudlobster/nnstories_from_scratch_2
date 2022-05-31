import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/pages/util/person_card.dart';

class UserMeet extends StatelessWidget {
  const UserMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Person(name: 'Иоанн', interests: 'Выставки и кинотеарты', imageColor: Colors.indigoAccent[200]),
              Person(name: 'Летиция', interests: 'Курортные романы', imageColor: Colors.purple[200]),
              Person(name: 'Август', interests: 'Прогулки под дождем', imageColor: Colors.blue[200]),
              Person(name: 'Аристарх', interests: 'Сельское хозяйство', imageColor: Colors.redAccent[200]),
              Person(name: 'Аксиния', interests: 'Разрушение устоев', imageColor: Colors.lightGreen[200]),
              Person(name: 'Платон', interests: 'Дворовые кошки и кофе', imageColor: Colors.brown[200]),
              Person(name: 'Розалия', interests: 'Пение птиц по утрам', imageColor: Colors.deepOrange[200]),
            ],
          );
        });
  }
}