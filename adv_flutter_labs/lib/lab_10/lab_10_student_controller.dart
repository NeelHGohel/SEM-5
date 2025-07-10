import 'package:adv_flutter_labs/lab_10/lab_10_student_model.dart';
import 'package:adv_flutter_labs/utils/import_export.dart' hide NAME;
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'lab_10_database.dart';
import 'lab_10_student_const.dart';

class Lab10StudentController extends GetxController {
  RxList<Lab10StudentModel> students = <Lab10StudentModel>[].obs;
  Lab10Database lab10database = Lab10Database();

  var nameController = TextEditingController();
  var cityController = TextEditingController();
  var universityController = TextEditingController();
  var branchController = TextEditingController();

  bool isEdit = false;
  @override
  void onInit() {
    super.onInit();
    getAllStudent();
    print("Data is fetched");
  }

  Future<void> getAllStudent() async {
    Database db = await lab10database.initDatabase();
    List<Map<String, dynamic>> list = await db.rawQuery('''
    SELECT * FROM $LAB_10_STUDENT;
    ''');

    RxList<Lab10StudentModel> tempList = <Lab10StudentModel>[].obs;
    for (var element in list) {
      tempList.add(Lab10StudentModel.fromMap(element));
    }
    students.value = tempList;
    print("::::::::: getAllStudent executed");
  }

  Future<void> addStudent(Lab10StudentModel student) async {
    Database db = await lab10database.initDatabase();
    await db.insert(LAB_10_STUDENT, student.toMap());
    await getAllStudent(); // Refresh list
    print("::::::::: addStudent executed");
  }

  Future<void> editStudent(int id, Lab10StudentModel updatedStudent) async {
    final db = await lab10database.initDatabase();
    await db.update(
      LAB_10_STUDENT,
      updatedStudent.toMap(),
      where: '$ID = ?',
      whereArgs: [id],
    );
    getAllStudent();
  }


  Future<void> deleteStudent(int id) async {
    Database db = await lab10database.initDatabase();
    await db.delete(LAB_10_STUDENT, where: '$ID = ?', whereArgs: [id]);
    await getAllStudent(); // Refresh list
    print("::::::::: deleteStudent executed");
  }
}
