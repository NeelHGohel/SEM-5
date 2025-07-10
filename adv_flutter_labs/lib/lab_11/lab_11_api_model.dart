class Lab11ApiModel {
  String? _LAB_11_NAME;

  String? get LAB_11_NAME => _LAB_11_NAME;

  set LAB_11_NAME(String? value) {
    _LAB_11_NAME = value;
  }

  String? _LAB_11_ADDRESS;
  String? _LAB_11_EMAIL;
  String? _LAB_11_ID;

  Lab11ApiModel({
    String? LAB_11_ADDRESS,
    String? LAB_11_EMAIL,
    String? LAB_11_ID,
    String? LAB_11_NAME,
  }) : _LAB_11_ADDRESS = LAB_11_ADDRESS,
       _LAB_11_EMAIL = LAB_11_EMAIL,
       _LAB_11_ID = LAB_11_ID,
       _LAB_11_NAME = LAB_11_NAME;

  Map<String, dynamic> toMap() {
    return {
      'name': LAB_11_NAME,
      'address': LAB_11_ADDRESS,
      'email': LAB_11_EMAIL,
      'id': LAB_11_ID,
    };
  }

  factory Lab11ApiModel.fromMap(Map<String, dynamic> map) {
    return Lab11ApiModel(
      LAB_11_ADDRESS: map['address'],
      LAB_11_EMAIL: map['email'],
      LAB_11_ID: map['id'],
      LAB_11_NAME: map['name'],
    );
  }

  String? get LAB_11_ADDRESS => _LAB_11_ADDRESS;

  set LAB_11_ADDRESS(String? value) {
    _LAB_11_ADDRESS = value;
  }

  String? get LAB_11_EMAIL => _LAB_11_EMAIL;

  set LAB_11_EMAIL(String? value) {
    _LAB_11_EMAIL = value;
  }

  String? get LAB_11_ID => _LAB_11_ID;

  set LAB_11_ID(String? value) {
    _LAB_11_ID = value;
  }
}
