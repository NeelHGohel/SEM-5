import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/import_export.dart';

class GetxNavigationAddEditView extends StatelessWidget {
  final GetxNavigationController getxNavigationController =
      Get.find<GetxNavigationController>();
  GetxNavigationModel? getxNavigationModel;

  GetxNavigationAddEditView({super.key}) {
    getxNavigationModel = Get.arguments;

    if (getxNavigationModel != null) {
      getxNavigationController.nameController.text = getxNavigationModel!.name;
      getxNavigationController.cityController.text = getxNavigationModel!.city;
      getxNavigationController.phoneController.text =
          getxNavigationModel!.phone;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add/Edit Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: getxNavigationController.nameController,
              decoration: InputDecoration(
                labelText: "Enter Name",
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: getxNavigationController.cityController,
              decoration: InputDecoration(
                labelText: "Enter City",
                hintText: "City",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: getxNavigationController.phoneController,
              decoration: InputDecoration(
                labelText: "Enter Phone Number",
                hintText: "0123456789",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    if (getxNavigationModel == null) {
                      // New user
                      getxNavigationController.addUserInList();
                    } else {
                      // Update logic (optional enhancement)
                    }
                    Get.back();
                  },
                  child: Text("Save"),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    getxNavigationController.nameController.clear();
                    getxNavigationController.cityController.clear();
                    getxNavigationController.phoneController.clear();
                  },
                  child: Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
