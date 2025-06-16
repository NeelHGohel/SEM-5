class UserModel {
  // late int _id;
  late String _name;
  late String _email;
  late String _phone;
  late String _city;
  late String _gender;

  // int get id => _id;
  //
  // set id(int value) {
  //   _id = value;
  // }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  UserModel({
    required String name,
    required String email,
    required String phone,
    required String city,
    required String gender,
  }) : _name = name,
       _email = email,
       _phone = phone,
       _city = city,
       _gender = gender;
}
