import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../utils/import_export.dart';

class GetxNavigationListViewPage extends StatelessWidget {
  const GetxNavigationListViewPage({super.key});

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

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GetxNavigationController>();

    return Scaffold(
      appBar: AppBar(title: const Text("User List View")),
      body: Obx(() {
        return controller.userList.isNotEmpty
            ? ListView.builder(
                itemCount: controller.userList.length,
                itemBuilder: (context, index) {
                  final user = controller.userList[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text("${user.phone} || ${user.city}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.toNamed(
                              GETX_NAVIGATION_ADD_EDIT_PAGE,
                              arguments: user,
                            );
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.deleteUserInList(index);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              )
            : const Center(child: Text("No User Found"));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(GETX_NAVIGATION_ADD_EDIT_PAGE);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
