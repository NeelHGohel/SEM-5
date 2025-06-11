

import '../../utils/import_export.dart';

class CrudController {
  CrudModel crudModel = CrudModel();

  void addUserList(user) => crudModel.addUserInList(user);

  void editUserList(index, user) => crudModel.editUserInList(index, user);

  void deleteUserList(index) => crudModel.deleteUserInList(index);

  List<dynamic> getUserList() => crudModel.getUserInList();

  void toggleFav(user, index) => crudModel.toggleFav(user, index);
}
