import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var name = "".obs;
  TextEditingController nameController = TextEditingController();
}

class ChangeStringRealTime extends StatelessWidget {
  ChangeStringRealTime({super.key});

  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Changes using GetX with StatelessWidget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                controller.name.value = value;
              },
            ),
            SizedBox(height: 10),
            Obx(() => Text("${controller.name.value}")),

            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                controller.nameController.clear();
                controller.name.value = "";
              },
              child: Text("Clear"),
            ),
          ],
        ),
      ),
    );
  }
}
