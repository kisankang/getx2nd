import 'package:get/get.dart';

class MyService extends GetxService {
  Rx<List<UserModel>> userList = Rx([
    UserModel(city: "서울", age: "35", height: "170cm", weight: "60kg"),
    UserModel(city: "전남", age: "29", height: "160cm", weight: "50kg"),
    UserModel(city: "경기", age: "37", height: "165cm", weight: "55kg"),
    UserModel(city: "대전", age: "39", height: "163cm", weight: "52kg"),
  ]);

  addUser(UserModel user) {
    userList.value = userList.value + [user];
  }
}

class UserModel {
  String city;
  String age;
  String height;
  String weight;
  UserModel({
    required this.city,
    required this.age,
    required this.height,
    required this.weight,
  });
}
