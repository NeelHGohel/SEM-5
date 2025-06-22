import 'package:get/get.dart';

import '../utils/import_export.dart';

class GetxNavigationAddEditView extends StatelessWidget {
  GetxNavigationController getxNavigationController = Get.put(
    GetxNavigationController(),
  );
  GetxNavigationModel? getxNavigationModel;
  GetxNavigationAddEditView({super.key, this.getxNavigationModel});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text("Add/Edit Page")),
    //   body: Center(
    //     child: TextButton(
    //       onPressed: () {
    //         Get.back();
    //       },
    //       child: Text("Tap to back"),
    //     ),
    //   ),
    // );

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
                    getxNavigationController.addUserInList();
                    print(getxNavigationController.userList);
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
