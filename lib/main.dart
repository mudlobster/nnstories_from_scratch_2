import 'package:flutter/material.dart';
import 'package:nnstories_from_scratch/pages/login_page.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.grey)
    );
  }
}
