import 'package:adv_flutter_labs/utils/const.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> initDatabase() async {
    String path = "${getDatabasesPath()}/UserDetails.db";

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $TBL_USERS(
        $USER_ID INTEGER PRIMARY KEY AUTOINCREMENT,
        $USER_NAME TEXT,
        $USER_EMAIL TEXT UNIQUE,
        $USER_PHONE TEXT,
        $USER_CITY TEXT,
        $USER_GENDER TEXT,
        )
      ''');
      },
    );
  }
}
