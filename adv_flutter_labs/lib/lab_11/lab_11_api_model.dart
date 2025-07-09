class Lab11ApiModel {
  String? LAB_11_NAME;
  String? LAB_11_ADDRESS;
  String? LAB_11_EMAIL;
  String? LAB_11_ID;

  Lab11ApiModel({
    this.LAB_11_ADDRESS,
    this.LAB_11_EMAIL,
    this.LAB_11_ID,
    this.LAB_11_NAME,
  });

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
      LAB_11_ADDRESS: 'address',
      LAB_11_EMAIL: 'email',
      LAB_11_ID: 'id',
      LAB_11_NAME: 'name',
    );
  }
}
