import '../../utils/import_export.dart';

class DbHelper {
  Future<Database> initDatabase() async {
    // Directory appDir = await getApplicationDocumentsDirectory();
    // String dbPath = "${appDir.path}/UserDetails.db";

    String dbPath = "${getDatabasesPath()}/UserDetails.db";
    return await openDatabase(
      dbPath,
      version: 2,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $TBL_USERS (
        $USER_ID INTEGER PRIMARY KEY NOT NULL,
        $USER_NAME TEXT,
        $USER_EMAIL TEXT,
        $USER_PHONE TEXT,
        $USER_CITY TEXT,
        $USER_GENDER TEXT
      );
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {},
    );
  }
}
