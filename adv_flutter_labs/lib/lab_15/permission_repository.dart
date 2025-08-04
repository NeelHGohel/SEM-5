import 'package:adv_flutter_labs/utils/import_export.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionRepository {
  void requestPermission(Function result);
}

class CameraRequest implements PermissionRepository {
  @override
  Future<void> requestPermission(Function result) async {
    PermissionStatus status = await Permission.camera.request();

    if (!status.isGranted) {
      result(false);
      Get.showSnackbar(
        GetSnackBar(
          title: "Camera Permission",
          message: "User Denied Camera permission",
        ),
      );
    } else {
      result(true);
      Get.showSnackbar(
        GetSnackBar(
          title: "Camera Permission",
          message: "User allowed Camera permission",
        ),
      );
    }
  }
}

class StorageRequest implements PermissionRepository {
  @override
  Future<void> requestPermission(Function result) async {
    PermissionStatus status = await Permission.manageExternalStorage.request();
    if (!status.isGranted) {
      result(false);
      Get.showSnackbar(
        GetSnackBar(
          title: "Storage Permission",
          message: "User Denied Storage permission",
        ),
      );
    } else {
      result(true);
      Get.showSnackbar(
        GetSnackBar(
          title: "Storage Permission",
          message: "User allowed Storage permission",
        ),
      );
    }
  }
}
