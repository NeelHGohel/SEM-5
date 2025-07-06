import 'package:adv_flutter_labs/lab_09/Student/student_const.dart';
import 'package:adv_flutter_labs/utils/import_export.dart';

class StudentDB {
  Future<Database> initDatabase() async {
    return await openDatabase(
      '${getDatabasesPath()}+/Student.db',
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $TBL_STUDENT(
          $STUDENT_STUDENTID PRIMARY KEY AUTOINCREMENT
          $STUDENT_CITY TEXT
          $STUDENT_ENROLLMENTNUMBER TEXT
          $STUDENT_PHONENUMBER TEXT
          $STUDENT_TWELFTHGRADE DECIMAL(8,2)
          $STUDENT_TENTHGRADE DECIMAL(8,2)
          $STUDENT_NAME TEXT
         $UNIVERSITY_ID INTEGER,
    FOREIGN KEY($UNIVERSITY_ID) REFERENCES $TBL_UNIVERSITY($UNIVERSITY_ID)
          );
        ''');

        db.execute('''
            CREATE TABLE $TBL_UNIVERSITY(
            $UNIVERSITY_ID PRIMARY KEY AUTOINCREMENT
            $UNIVERSITY_NAME TEXT
            $UNIVERSITY_SHORTNAME TEXT
            $UNIVERSITY_CITY TEXT
            $UNIVERSITY_WEBSITE TEXT
            $UNIVERSITY_EMAIL TEXT
            $UNIVERSITY_PHONE TEXT
            $UNIVERSITY_ADDRESS TEXT
            );
        ''');
      },
    );
  }
}
