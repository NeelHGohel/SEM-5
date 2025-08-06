import 'package:adv_flutter_labs/lab_16/file_read_write_controller.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class FileReadWriteView extends StatelessWidget {
  FileReadWriteView({super.key});

  FileReadWriteController controller = Get.put(FileReadWriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read File from External Storage")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Text(controller.content.value)),
      ),
    );
  }
}
