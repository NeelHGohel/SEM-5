import 'package:adv_flutter_labs/lab_01/a_2.dart';
import 'package:adv_flutter_labs/lab_09/Student/student_model.dart';
import 'package:adv_flutter_labs/lab_10/lab_10_student_model.dart';
import 'package:adv_flutter_labs/utils/import_export.dart' hide NAME;
import 'package:get/get.dart';

import 'lab_10_database.dart';
import 'lab_10_student_const.dart';

class Lab10StudentController extends GetxController {
  RxList<Lab10StudentModel> students = <Lab10StudentModel>[].obs;
  Lab10Database lab10database = Lab10Database();

  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController branchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getAllStudent();
    print("Data is fetched");
  }

  Future<RxList<Lab10StudentModel>> getAllStudent() async {
    Database db = await lab10database.initDatabase();
    List<Map<String, Object?>> list = await db.rawQuery('''
      SELECT * FROM $LAB_10_STUDENT
    ''');
    RxList<Lab10StudentModel> students = <Lab10StudentModel>[].obs;
    list.forEach((element) {
      Lab10StudentModel model = Lab10StudentModel();
      model.id = element[ID] as int;
      model.city = element[CITY].toString();
      model.name = element[NAME].toString();
      model.university = element[UNIVERSITY].toString();

      students.add(model);
    });
    print("::::::::::::::::::;data now return is called");

    return students;
  }

  Future<void> addStudent(Lab10StudentModel) async {
    Database db = await lab10database.initDatabase();
    db.insert(LAB_10_STUDENT, Lab10StudentModel);
    print("::::::::::::::::::;add is called");
  }

  Future<void> editStudent(index, Lab10StudentModel) async {
    Database db = await lab10database.initDatabase();
    db.update(LAB_10_STUDENT, Lab10StudentModel);
    print("::::::::::::::::::;edit is called");
  }

  Future<void> deleteStudent(index) async {
    Database db = await lab10database.initDatabase();
    db.delete(LAB_10_STUDENT);
    print("::::::::::::::::::;delete is called");
  }
}
