import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileReadWriteController extends GetxController {
  RxString content = "".obs;

  @override
  void onInit() {
    super.onInit();
    readFile();
  }

  Future<void> readFile() async {
    if (await Permission.manageExternalStorage.request().isGranted ||
        await Permission.storage.request().isGranted) {
      Directory dir = await getApplicationDocumentsDirectory();
      File newFile = File("${dir.path}/myFile.txt");

      if (await newFile.exists()) {
        content.value = (await newFile.readAsString());
        print(
          "file is reading value are $content****************************************",
        );
      } else {
        newFile.create();
        print(
          ":::::::::::::::::::::::::::::::::::::New file Created at ${newFile.path}",
        );
      }
    } else {
      print("Storage permission issue////////////////////////////////////////");
    }
  }

  Future<void> writeFile(String data) async {
    Directory dir = await getApplicationDocumentsDirectory();
    File file = File("${dir.path}/myFile.txt");
    await file.writeAsString(data);
    content.value = data;
    print("File written successfully");
  }
}
