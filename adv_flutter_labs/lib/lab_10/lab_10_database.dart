import 'package:adv_flutter_labs/lab_10/lab_10_student_const.dart';
import 'package:adv_flutter_labs/utils/import_export.dart' hide NAME;

class Lab10Database {
  String path = "${getDatabasesPath()}/Student1.db";
  Future<Database> initDatabase() async {
    // if (await databaseExists(path)) {
    //   await deleteDatabase(path);
    //   print("Old DB deleted");
    // }
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $LAB_10_STUDENT (
            $ID INTEGER PRIMARY KEY AUTOINCREMENT,
            $NAME TEXT,
            $CITY TEXT,
            $UNIVERSITY TEXT,
            $BRANCH TEXT
          );
        ''');
      },
    );
  }
}
