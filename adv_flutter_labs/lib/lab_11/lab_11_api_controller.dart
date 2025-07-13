import 'dart:convert';

import 'package:adv_flutter_labs/lab_11/lab_11_api_model.dart';
import 'package:adv_flutter_labs/utils/import_export.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/src/response.dart';
import 'lab_11_api_service.dart';

class Lab11ApiController extends GetxController {
  Lab11ApiService? api;

  Lab11ApiController(this.api);

  RxList<Lab11ApiModel> list = <Lab11ApiModel>[].obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  Future<void> addData(Lab11ApiModel model) async {
    await api!.addData(data: model.toMap());
  }

  Future<void> deleteData({index}) async {
    await api!.deleteData(index: index);
  }

  Future<void> getData() async {
    Response response = await api!.getData();
    print('VALUE ::: ${response.statusCode}');
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      for (var element in data) {
        list.add(
          Lab11ApiModel(
            LAB_11_NAME: element['name'],
            LAB_11_ID: element['id'],
            LAB_11_EMAIL: element['email'],
            LAB_11_ADDRESS: element['address'],
          ),
        );
        // print(':::::::::::::::::::::::::$element');
      }
    } else {
      Center(child: Text("No data"));
    }
  }
}
