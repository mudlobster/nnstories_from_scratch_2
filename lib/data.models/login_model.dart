class LoginModel {
  String email;
  String password;

  LoginModel(
      {this.email = "email",
        this.password = 'password'});

  LoginModel.fromMap(Map<String, dynamic> dataMap,{
    this.email = "", this.password = ""}) {
    email = dataMap["email"]??"";
    password = dataMap["password"]??"";
  }
  }

Map<String, dynamic> map = {
  "email" : "email",
  "password" : "password",

};

List <Map<String, dynamic>> listOfMapsLogins = [
  {
    'email' : 'shatukho.ff@gmail.com',
    'password' : '123456'
    },
  {
    'email' : 'marina@gmail.com',
    'password' : '1234567'
  },
  {
    'email' : 'igor@gmail.com',
    'password' : '12345678'
  },
  {
    'email' : 'petya@gmail.com',
    'password' : '123456789'
  },
];