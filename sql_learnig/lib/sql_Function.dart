import 'dart:developer';
import 'package:sqflite/sqflite.dart' as sql;

class SqLHelper {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT,
      email TEXT
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'adtech.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable(database);
      },
    );
  }

  static Future<int> addItems(
      {required String name, required String email}) async {
    final db = await SqLHelper.db();
    final data = {
      'name': name,
      'email': email,
    };

    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SqLHelper.db();

    return db.query('items', orderBy: 'id');
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SqLHelper.db();

    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItems(int id, String name, String email) async {
    final db = await SqLHelper.db();
    final data = {
      'name': name,
      'email': email,
    };

    final result =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItems(int id) async {
    final db = await SqLHelper.db();

    try {
      await db.delete('items', where: "id = ?", whereArgs: [id]);
    } catch (error) {
      log(error.toString());
    }
  }
}
