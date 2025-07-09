import 'package:adv_flutter_labs/lab_11/lab_11_api_controller.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class Lab11ApiView extends StatelessWidget {
  Lab11ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API CRUD")),
      // body: GetBuilder(builder: (controller) {}),
    );
  }
}
