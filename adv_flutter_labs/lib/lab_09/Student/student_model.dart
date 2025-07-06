class StudentModel {
  late int _studentID;
  late String _name;
  late String _enrollmentNumber;
  late double _tenthGrade;
  late double _twelfthGrade;
  late String _city;
  late String _phoneNumber;

  int get studentID => _studentID;

  set studentID(int value) {
    _studentID = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get enrollmentNumber => _enrollmentNumber;

  set enrollmentNumber(String value) {
    _enrollmentNumber = value;
  }

  double get tenthGrade => _tenthGrade;

  set tenthGrade(double value) {
    _tenthGrade = value;
  }

  double get twelfthGrade => _twelfthGrade;

  set twelfthGrade(double value) {
    _twelfthGrade = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  // StudentModel({
  //   required int studentID,
  //   required String name,
  //   required String enrollmentNumber,
  //   required double tenthGrade,
  //   required double twelfthGrade,
  //   required String city,
  //   required String phoneNumber,
  // }) : _city = city,
  //      _name = name,
  //      _enrollmentNumber = enrollmentNumber,
  //      _phoneNumber = phoneNumber,
  //      _studentID = studentID,
  //      _tenthGrade = tenthGrade,
  //      _twelfthGrade = twelfthGrade;
}
