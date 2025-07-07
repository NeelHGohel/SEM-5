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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.students[index].name),
            subtitle: Text(
              "${controller.students[index].branch} || ${controller.students[index].university}",
            ),
            trailing: Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.editStudent(index, controller.students[index]);
                  },
                  icon: Icon(Icons.edit),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {
                    controller.deleteStudent(index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
