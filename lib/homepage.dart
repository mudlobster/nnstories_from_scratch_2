import 'package:flutter/material.dart';
import 'pages/meet.dart';
import 'pages/news.dart';
import 'pages/restaurants.dart';
import 'pages/sport.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserNews(),
    UserMeet(),
    UserRestaurants(),
    UserSport(),
  ];

  @override
  Widget build(BuildContext) {
    return Scaffold( //added const
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text('nnstories”',style: GoogleFonts.libreBaskerville(
          textStyle: (TextStyle(fontSize: 30))
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fiber_new_sharp), label: 'Новости'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: 'Знакомства'),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Рестораны'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Спорт'),
        ],
      ),
    );
  }
}
