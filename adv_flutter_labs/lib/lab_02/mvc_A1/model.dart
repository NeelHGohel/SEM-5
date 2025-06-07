import 'package:flutter/cupertino.dart';

class Lab2_A1 {
  List<dynamic> userList = [];

  void addUserInList(dynamic user) {
    userList.add(user);
  }

  void editUserInList(index, user) {
    userList[index] = user;
  }

  void deleteUserInList(index) {
    userList.removeAt(index);
  }

  List<dynamic> getUserInList() {
    print(userList);
    return userList;
  }

  void toggleFav() {}
}
