import '../../utils/import_export.dart';

class UserController {
  final DbHelper _dbHelper = DbHelper();

  Future<List<UserModel>> getAllUsers() async {
    final db = await _dbHelper.initDatabase();
    final List<Map<String, dynamic>> maps = await db.query(TBL_USERS);
    return List.generate(maps.length, (i) {
      return UserModel(
        name: maps[i][USER_NAME],
        email: maps[i][USER_EMAIL],
        phone: maps[i][USER_PHONE],
        city: maps[i][USER_CITY],
        gender: maps[i][USER_GENDER],
      );
    });
  }

  Future<void> insertUser(UserModel user) async {
    final db = await _dbHelper.initDatabase();
    await db.insert(TBL_USERS, {
      USER_NAME: user.name,
      USER_EMAIL: user.email,
      USER_PHONE: user.phone,
      USER_CITY: user.city,
      USER_GENDER: user.gender,
    });
  }

  Future<void> editUser(UserModel user,String name) async {
    final db = await _dbHelper.initDatabase();
    await db.update(
      TBL_USERS,
      {
        USER_NAME: user.name,
        USER_EMAIL: user.email,
        USER_PHONE: user.phone,
        USER_CITY: user.city,
        USER_GENDER: user.gender,
      },
      where: '$USER_NAME = ?',
      whereArgs: [user.name],
    );
  }

  Future<void> deleteUser(String name) async {
    final db = await _dbHelper.initDatabase();
    await db.delete(TBL_USERS, where: "$USER_NAME = ?", whereArgs: [name]);
  }
}
