import '../../utils/import_export.dart';

class CardController {
  CardModel cardModel = CardModel();

  void addUserList(user) => cardModel.addUserInList(user);

  void editUserList(index, user) => cardModel.editUserInList(index, user);

  void deleteUserList(index) => cardModel.deleteUserInList(index);

  List<dynamic> getUserList() => cardModel.getUserInList();
}
