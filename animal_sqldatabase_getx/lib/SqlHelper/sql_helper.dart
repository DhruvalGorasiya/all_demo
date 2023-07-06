import 'package:sqflite/sqflite.dart' as sql;

class SqLHelper {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE animalCategory(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT,
      logo TEXT,
      img TEXT
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'animal_data.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable(database);
      },
    );
  }

  static Future<int> addItems(
      {required String name,required String img,required String logo}) async {
    final db = await SqLHelper.db();
    final data = {
      'name': name,
      'logo': logo,
      'img': img,
    };

    final id = await db.insert('animalCategory', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SqLHelper.db();

    return db.query('animalCategory', orderBy: 'id');
  }

}