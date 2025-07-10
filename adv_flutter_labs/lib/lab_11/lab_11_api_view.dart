import 'package:adv_flutter_labs/lab_11/lab_11_api_controller.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';
import 'lab_11_api_repo.dart';

class Lab11ApiView extends StatelessWidget {
  Lab11ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API CRUD")),
      body: GetX<Lab11ApiController>(
        init: Lab11ApiController(Lab11ApiRepo()),
        builder: (controller) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.list[index].LAB_11_NAME.toString()),
                subtitle: Text(
                  "${controller.list[index].LAB_11_EMAIL.toString()} | ${controller.list[index].LAB_11_ADDRESS.toString()}",
                ),
              );
            },
            itemCount: controller.list.length,
          );
        },
      ),

    );
  }
}
