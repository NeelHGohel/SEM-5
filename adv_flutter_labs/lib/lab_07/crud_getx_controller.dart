import 'package:adv_flutter_labs/lab_07/crud_getx_model.dart';
import 'package:adv_flutter_labs/utils/import_export.dart';
import 'package:get/get.dart';

class CrudGetxController extends GetxController {
  RxList<CrudGetxModel> userList = <CrudGetxModel>[].obs;
  var nameController = TextEditingController();
  var rollController = TextEditingController();
  var cityController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void getDataFromList() {}

  void addUserIntoList() {}
}
