import 'package:adv_flutter_labs/lab_10/lab_10_student_controller.dart';
import 'package:adv_flutter_labs/lab_10/lab_10_student_model.dart';
import 'package:get/get.dart';

import '../utils/import_export.dart';

class Lab10StudentAddEditPage extends StatelessWidget {
  const Lab10StudentAddEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    Lab10StudentController controller = Get.find<Lab10StudentController>();

    return Scaffold(
      appBar: AppBar(title: Text("Add Edit Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Name",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: controller.cityController,
              decoration: InputDecoration(
                hintText: "Enter City",
                labelText: "City",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: controller.branchController,
              decoration: InputDecoration(
                hintText: "Enter Branch",
                labelText: "Branch",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: controller.universityController,
              decoration: InputDecoration(
                hintText: "Enter University",
                labelText: "University",
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    controller.nameController.clear();
                    controller.branchController.clear();
                    controller.universityController.clear();
                    controller.cityController.clear();
                  },
                  child: Text("Reset"),
                ),
                SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    Lab10StudentModel newStudent = Lab10StudentModel();
                    newStudent.name = controller.nameController.toString();
                    newStudent.city = controller.cityController.toString();
                    newStudent.university = controller.universityController
                        .toString();
                    newStudent.branch = controller.branchController.toString();
                    controller.addStudent(newStudent);
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
