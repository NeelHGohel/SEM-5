import 'package:adv_flutter_labs/lab_02/mvc_A1/model.dart';

class Controller {
  Lab2_A1 model = Lab2_A1();

  void addUserList(user) => model.addUserInList(user);

  void editUserList(index, user) => model.editUserInList(index, user);

  void deleteUserList(index) => model.deleteUserInList(index);

  List<dynamic> getUserList() => model.getUserInList();

  void toggleFav(user,index) => model.toggleFav(user,index);
}
