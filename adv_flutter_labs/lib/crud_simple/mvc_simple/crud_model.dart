import 'package:adv_flutter_labs/lab_02/mvc_A1/const.dart';

class CrudModel {
  List<dynamic> crudUserList = [];

  void addUserInList(dynamic user) {
    crudUserList.add(user);
  }

  void editUserInList(int index, Map<dynamic, dynamic> user) {
    crudUserList[index] = user;
    // print(crudUserList);
  }

  void deleteUserInList(index) {
    crudUserList.removeAt(index);
  }

  List<dynamic> getUserInList() {
    print(crudUserList);
    return crudUserList;
  }

  void toggleFav(user, index) {
    user[IS_FAV] = !user[IS_FAV];
    crudUserList[index] = user;
  }
}
