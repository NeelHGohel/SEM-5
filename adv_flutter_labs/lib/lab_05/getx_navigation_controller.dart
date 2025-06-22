import 'package:get/get.dart';

import '../utils/import_export.dart';

class GetxNavigationController extends GetxController{
  RxList<GetxNavigationModel> userList = <GetxNavigationModel>[].obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void addUserInList() {
    userList.add(
      GetxNavigationModel(
        name: nameController.text.toString(),
        phone: phoneController.text.toString(),
        city: cityController.text.toString(),
      ),
    );
    nameController.clear();
    phoneController.clear();
    cityController.clear();
    print(userList.length);
  }

  void editUserInList(index) {
    GetxNavigationModel editUser = userList[index];
    editUser.name = nameController.text.toString();
    editUser.city = cityController.text.toString();
    editUser.phone = phoneController.text.toString();
    userList[index] = editUser;
    update();
  }

  // RxList<GetxNavigationModel> getUserInList() {
  //   return userList;
  // }

  void deleteUserInList(index) {
    userList.removeAt(index);
  }
}
