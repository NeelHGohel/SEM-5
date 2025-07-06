class UniversityModel {
  late int _uni_ID;

  int get uni_ID => _uni_ID;

  set id(int value) {
    _uni_ID = value;
  }

  late String _name;
  late String _shortName;
  late String _city;
  late String _website;
  late String _contactEmail;
  late String _contactPhone;
  late String _address;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get shortName => _shortName;

  set shortName(String value) {
    _shortName = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get website => _website;

  set website(String value) {
    _website = value;
  }

  String get contactEmail => _contactEmail;

  set contactEmail(String value) {
    _contactEmail = value;
  }

  String get contactPhone => _contactPhone;

  set contactPhone(String value) {
    _contactPhone = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }
}
