import 'package:adv_flutter_labs/lab_15/permission_controller.dart';
import 'package:adv_flutter_labs/lab_15/permission_repository.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class PermissionViewPage extends StatelessWidget {
  PermissionViewPage({super.key});

  PermissionController controller = Get.put(PermissionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Permission page")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Camera"),
            leading: Icon(Icons.camera),
            onTap: () {
              controller.requestPermission(CameraRequest(), (result) {
                if (result) {
                  Get.to(UserAddEditPage());
                }
              });
            },
            trailing: Icon(Icons.chevron_right_rounded),
          ),
        ],
      ),
    );
  }
}
