class Lab11ApiModel {
  String? LAB_11_NAME;

  String? LAB_11_ADDRESS;
  String? LAB_11_EMAIL;

  Lab11ApiModel({
    String? LAB_11_ADDRESS,
    String? LAB_11_EMAIL,
    String? LAB_11_NAME,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': LAB_11_NAME,
      'address': LAB_11_ADDRESS,
      'email': LAB_11_EMAIL,
    };
  }

  factory Lab11ApiModel.fromMap(Map<String, dynamic> map) {
    return Lab11ApiModel(
      LAB_11_ADDRESS: map['address'],
      LAB_11_EMAIL: map['email'],
      LAB_11_NAME: map['name'],
    );
  }
}
