import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nnstories_from_scratch/data.models/login_model.dart';
import 'package:nnstories_from_scratch/homepage.dart';

import '../data.models/db_request_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<LoginModel> loginModelList = [];

  Future<void> getLoginsFromDB() async {
    loginModelList = await getLoginFromDB();
    setState(() {

    });
  }

  @override
  void initState() {
    getLoginsFromDB();
    super.initState();
  }

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //login and password
  var login = '';
  var password = '';




  @override
  Widget build(BuildContext context) {
    return loginModelList.isEmpty?
    Center(
      child: CircularProgressIndicator(),
    ):
      Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.people_alt,
                color: Colors.deepPurple[600],
                size: 100),
                SizedBox(
                  height: 75,
                ),
                Text(
                    'Привет!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Мы ждали тебя...',
                  style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Пароль',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MaterialButton(
                    height: 60,
                    minWidth: 120,
                    onPressed: () {
                      String login =_emailController.text;
                      String password = _passwordController.text;
                        var i = 0;
                        for (i = 0; i < listOfMapsLogins.length; i++) {
                        if (listOfMapsLogins[i].containsKey(login) &&
                        listOfMapsLogins[i].containsValue(password)) {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                }));
                           }
                          }
                  },
                    color: Colors.deepPurple,
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Нет учетной записи?', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' Присоединяйся!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}