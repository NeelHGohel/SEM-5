import 'package:adv_flutter_labs/lab_10/lab_10_student_add_edit_page.dart';
import 'package:adv_flutter_labs/lab_10/lab_10_student_controller.dart';
import 'package:get/get.dart';
import '../utils/import_export.dart';

class Lab10StudentView extends StatelessWidget {
  const Lab10StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    Lab10StudentController controller = Get.put(Lab10StudentController());
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                controller.students[index].name!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                "${controller.students[index].branch} | ${controller.students[index].university ?? ''}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.isEdit = true;
                        Get.to(Lab10StudentAddEditPage(user: controller.students[index]));
                      },
                      icon: Icon(Icons.edit,color: Colors.blue,),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.deleteStudent(
                          controller.students[index].id!,
                        );
                      },
                      icon: Icon(Icons.delete,color: Colors.red,),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Lab10StudentAddEditPage());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
