class SignupModel {

  List<dynamic> userList = [];

  // late String _name;
  // late String _email;
  // late String _phone;
  // late String _password;
  // late String _confirmPassword;

  void addUserInList(user){
    userList.add(user);
  }
  List<dynamic> getUserInList() {
    print(userList);
    return userList;
  }

  // String get name => _name;
  //
  // set name(String value) {
  //   _name = value;
  // }
  //
  // String get email => _email;
  //
  // set email(String value) {
  //   _email = value;
  // }
  //
  // String get phone => _phone;
  //
  // set phone(String value) {
  //   _phone = value;
  // }
  //
  // String get password => _password;
  //
  // set password(String value) {
  //   _password = value;
  // }
  //
  // String get confirmPassword => _confirmPassword;
  //
  // set confirmPassword(String value) {
  //   _confirmPassword = value;
  // }


}