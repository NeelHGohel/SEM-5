import 'lab_10_student_const.dart';

class Lab10StudentModel {
  int? _id;
  String? _name;
  String? _city;
  String? _university;
  String? _branch;

  int? get id => _id;
  set id(int? value) => _id = value;

  String? get name => _name;
  set name(String? value) => _name = value;

  String? get city => _city;
  set city(String? value) => _city = value;

  String? get university => _university;
  set university(String? value) => _university = value;

  String? get branch => _branch;
  set branch(String? value) => _branch = value;

  Lab10StudentModel({
    int? id,
    String? name,
    String? city,
    String? university,
    String? branch,
  })  : _id = id,
        _name = name,
        _city = city,
        _university = university,
        _branch = branch;

  factory Lab10StudentModel.fromMap(Map<String, dynamic> map) {
    return Lab10StudentModel(
      id: map[ID],
      name: map[NAME],
      city: map[CITY],
      university: map[UNIVERSITY],
      branch: map[BRANCH],
    );
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      NAME: _name,
      CITY: _city,
      UNIVERSITY: _university,
      BRANCH: _branch,
    };
    if (_id != null) {
      map[ID] = _id;
    }
    return map;
  }
}
