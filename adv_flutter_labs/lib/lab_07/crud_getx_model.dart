class CrudGetxModel {
  int? _id;

  int? get id => _id;

  set id(int? value) {
    _id = value;
  }

  String? _name;
  String? _roll;
  String? _city;

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  String? get roll => _roll;

  set roll(String? value) {
    _roll = value;
  }

  String? get city => _city;

  set city(String? value) {
    _city = value;
  }

  CrudGetxModel({int? id, String? name, String? city, String? roll})
    : _id = id,
      _name = name,
      _city = city,
      _roll = roll;
}
