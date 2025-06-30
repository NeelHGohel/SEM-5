import 'package:adv_flutter_labs/lab_07/crud_getx_controller.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class CrudGetxAddEditPage extends StatelessWidget {
  CrudGetxAddEditPage({super.key});
  CrudGetxController getxController = Get.put(CrudGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(controller: getxController.nameController),
            SizedBox(height: 10),
            TextFormField(controller: getxController.cityController),
            SizedBox(height: 10),
            TextFormField(controller: getxController.rollController),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
