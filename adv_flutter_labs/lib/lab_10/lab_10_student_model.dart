class Lab10StudentModel {
  late int _id;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  late String _name;
  late String _branch;
  late String _city;
  late String _university;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get branch => _branch;

  set branch(String value) {
    _branch = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get university => _university;

  set university(String value) {
    _university = value;
  }
}
