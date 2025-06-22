class GetxNavigationModel {
  late String _name;
  late String _phone;
  late String _city;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  GetxNavigationModel({
    required String name,
    required String phone,
    required String city,
  }) : _name = name,
       _phone = phone,
       _city = city;
}
