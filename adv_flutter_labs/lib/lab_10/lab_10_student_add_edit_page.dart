import 'package:adv_flutter_labs/lab_10/lab_10_student_controller.dart';
import 'package:adv_flutter_labs/lab_10/lab_10_student_model.dart';
import 'package:get/get.dart';
import '../utils/import_export.dart';

class Lab10StudentAddEditPage extends StatelessWidget {
  Lab10StudentModel? user;
  Lab10StudentAddEditPage({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    Lab10StudentController controller = Get.find<Lab10StudentController>();

    if (user != null) {
      controller.nameController.text = user!.name!;
      controller.cityController.text = user!.city!;
      controller.universityController.text = user!.university!;
      controller.branchController.text = user!.branch!;
    }
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
                    Lab10StudentModel newStudent = Lab10StudentModel(
                      branch: controller.branchController.text,
                      city: controller.cityController.text,
                      name: controller.nameController.text,
                      university: controller.universityController.text,
                    );

                    if (user == null) {
                      controller.addStudent(newStudent);
                    } else {
                      newStudent.id = user!.id;
                      controller.editStudent(user!.id!, newStudent);
                    }

                    Get.back();
                    controller.nameController.clear();
                    controller.branchController.clear();
                    controller.universityController.clear();
                    controller.cityController.clear();
                  },
                  child: Text(controller.isEdit ?"Edit":"Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
