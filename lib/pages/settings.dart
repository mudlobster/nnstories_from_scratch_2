import 'package:flutter/material.dart';

class Account extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Учетная запись'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(children: [
              Text('login' + " : " + '@fedor_shatukho', style: TextStyle(fontSize: 20),)
            ],),
            Row(children: [
              Text('Номер телефона' + ":" + '+79081501668' , style: TextStyle(fontSize: 20),)
            ],),
            Row(children: [
              Text('Пароль' + ":" + 'qw@rty123456!' , style: TextStyle(fontSize: 20),)
            ],)
          ],
        ),
      ),
    );
  }
}