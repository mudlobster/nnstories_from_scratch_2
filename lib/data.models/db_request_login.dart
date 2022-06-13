import 'package:nnstories_from_scratch/data.models/login_model.dart';

Future<List<LoginModel>> getLoginFromDB() async {
// тут будет запрос к базе. после чего запрос вернет json
// мы уго спарсим и преобразуем в массив МАП
  await Future.delayed(Duration(seconds: 2));
  List<LoginModel> listLoginsModel = [];
  listOfMapsLogins.forEach((element) {
    listLoginsModel.add(LoginModel.fromMap(element));
  });
  return listLoginsModel;
}