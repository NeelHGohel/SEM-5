import 'package:adv_flutter_labs/lab_10/lab_10_student_const.dart';
import 'package:adv_flutter_labs/utils/import_export.dart' hide NAME;

class Lab10Database {
  Future<Database> initDatabase() async {
    return await openDatabase(
      "${getDatabasesPath()}/Student1.db",
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $LAB_10_STUDENT(
            $ID INTEGER PRIMARY KEY AUTOINCREMENT
            $NAME TEXT,
            $BRANCH TEXT,
            $CITY TEXT,
            $UNIVERSITY TEXT
          );
        ''');
      },
    );
  }
}
