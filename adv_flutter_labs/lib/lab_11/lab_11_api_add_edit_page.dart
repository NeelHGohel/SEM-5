import 'package:adv_flutter_labs/lab_11/lab_11_api_controller.dart';
import 'package:adv_flutter_labs/lab_11/lab_11_api_model.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class Lab11ApiAddEditPage extends StatelessWidget {
  Lab11ApiAddEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    Lab11ApiController controller = Get.find<Lab11ApiController>();

    return Scaffold(
      appBar: AppBar(title: Text("Add/Edit Page")),
      body: Column(
        children: [
          TextFormField(
            controller: controller.nameController,
            decoration: InputDecoration(labelText: "Enter Name"),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller.addressController,
            decoration: InputDecoration(labelText: "Enter Address"),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller.emailController,
            decoration: InputDecoration(labelText: "Enter Email"),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              TextButton(
                onPressed: () {
                  controller.nameController.clear();
                  controller.addressController.clear();
                  controller.emailController.clear();
                },
                child: Text("Reset"),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () async {
                  Lab11ApiModel newUser = Lab11ApiModel(
                    LAB_11_ADDRESS: controller.addressController.text,
                    LAB_11_EMAIL: controller.emailController.text,
                    LAB_11_NAME: controller.nameController.text,
                  );
                  await controller.addData(newUser);
                  Get.back();
                },
                child: Text("Save"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
