class CardModel {
  List<dynamic> cardUserList = [];

  void addUserInList(dynamic user) {
    cardUserList.add(user);
  }

  void editUserInList(int index, Map<dynamic, dynamic> user) {
    cardUserList[index] = user;
    // print(cardUserList);
  }

  void deleteUserInList(index) {
    cardUserList.removeAt(index);
  }

  List<dynamic> getUserInList() {
    // print(cardUserList);
    return cardUserList;
  }
}
