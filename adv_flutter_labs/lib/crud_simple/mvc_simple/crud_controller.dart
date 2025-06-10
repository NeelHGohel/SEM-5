import 'package:adv_flutter_labs/lab_02/mvc_A1/model.dart';

import 'crud_model.dart';

class CrudController {
  CrudModel crudModel = CrudModel();

  void addUserList(user) => crudModel.addUserInList(user);

  void editUserList(index, user) => crudModel.editUserInList(index, user);

  void deleteUserList(index) => crudModel.deleteUserInList(index);

  List<dynamic> getUserList() => crudModel.getUserInList();

  void toggleFav(user, index) => crudModel.toggleFav(user, index);
}
