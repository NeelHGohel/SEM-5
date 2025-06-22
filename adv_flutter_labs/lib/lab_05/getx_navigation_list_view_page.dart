import 'package:get/get_state_manager/get_state_manager.dart';

import '../utils/import_export.dart';

class GetxNavigationListViewPage extends StatelessWidget {
  const GetxNavigationListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text("Getx Navigation")),
    //   body: Center(
    //     child: TextButton(
    //       onPressed: () {
    //         Get.to(GetxNavigationAddEditView());
    //       },
    //       child: Text("Tap Here"),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(title: Text("User List View ")),
      body: GetBuilder<GetxNavigationController>(
        init: GetxNavigationController(),
        builder: (controller) {
          return controller.userList.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.userList[index].name),
                      subtitle: Text(
                        "${controller.userList[index].phone} || ${controller.userList[index].city}",
                      ),
                    );
                  },
                  itemCount: controller.userList.length,
                )
              : Center(child: Text("No User Found"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(GetxNavigationAddEditView());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
