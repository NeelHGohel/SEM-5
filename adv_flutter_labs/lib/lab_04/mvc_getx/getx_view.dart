import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../utils/import_export.dart';

class GetxView extends StatelessWidget {
  const GetxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX demo"),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 500,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Center(
                              child: ListTile(title: Text('Hello')),
                            );
                          },
                          itemCount: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: Icon(Icons.open_in_browser),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            title: "Are you sure ??",
            middleText: "You want do this",
            textConfirm: "Yes",
            textCancel: "No",
            onConfirm: () {
              Get.back();
              Get.snackbar(
                "You Pressed On the Yes",
                "Am I right ??",
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            onCancel: () {
              Get.back();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
