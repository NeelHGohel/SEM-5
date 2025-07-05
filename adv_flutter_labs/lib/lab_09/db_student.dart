import 'package:adv_flutter_labs/utils/import_export.dart';

class StudentDB {
  Future<Database> initDatabase() async {
    return await openDatabase(
      '${getDatabasesPath()}+/Student.db',
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE STUDENT(
            
          );
        ''');
      },
    );
  }
}
