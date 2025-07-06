import 'package:adv_flutter_labs/lab_09/Student/db_student.dart';
import 'package:adv_flutter_labs/lab_09/Student/student_const.dart';
import 'package:adv_flutter_labs/lab_09/Student/student_model.dart';
import 'package:sqflite/sqflite.dart';

class StudentController {
  StudentDB studentDB = StudentDB();

  Future<List<StudentModel>> getAllStudent() async {
    Database db = await studentDB.initDatabase();
    List<Map<String, Object?>> list = await db.rawQuery(
      "SELECT * FROM $TBL_STUDENT STU INNER JOIN $TBL_UNIVERSITY UNI"
      "WHERE STU.$UNIVERSITY_ID = UNI.$UNIVERSITY_ID",
    );
    List<StudentModel> students = [];
    list.forEach((element) {
      StudentModel studentModel = StudentModel();

      studentModel.studentID = element[STUDENT_STUDENTID] as int;
      studentModel.name = element[STUDENT_NAME].toString();
      studentModel.phoneNumber = element[STUDENT_ENROLLMENTNUMBER].toString();
      studentModel.tenthGrade = element[STUDENT_TENTHGRADE] as double;
      studentModel.twelfthGrade = element[STUDENT_TWELFTHGRADE] as double;
      studentModel.city = element[STUDENT_CITY].toString();
      studentModel.phoneNumber = element[STUDENT_PHONENUMBER].toString();
      students.addAll(studentModel as Iterable<StudentModel>);
    });
    return students;
  }
}
