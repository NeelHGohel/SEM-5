
import 'package:adv_flutter_labs/utils/import_export.dart';

class Lab2_A1 {
  List<dynamic> userList = [];

  void addUserInList(dynamic user) {
    userList.add(user);
  }

  void editUserInList(int index,Map<dynamic, dynamic> user, ) {
    userList[index] = user;
    // print(userList);
  }

  void deleteUserInList(index) {
    userList.removeAt(index);
  }

  List<dynamic> getUserInList() {
    // print(userList);
    return userList;
  }

  void toggleFav(user, index) {
    user[IS_FAV] = !user[IS_FAV];
    userList[index] = user;
  }
}
