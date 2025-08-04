import 'package:adv_flutter_labs/lab_15/permission_repository.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PermissionController extends GetxController {
  void requestPermission(PermissionRepository repo, Function callbackFunction) {
    repo.requestPermission(callbackFunction);
  }
}
