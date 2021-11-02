// ignore: import_of_legacy_library_into_null_safe
import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:widget_of_the_week/screen/phucbv/sqflite/Students.dart';

class DatabaseHelperDemo {
  static final _dbName = 'StudentDemo.db';
  static final _dbVersion = 1;
  static final columnName = 'name';
  static final columnAge = 'age';
  static final columnAddress = 'address';
  static final columnId = 'id';
  static final _tableName = 'StudentDemo';

  DatabaseHelperDemo._();

  static final DatabaseHelperDemo dbHelper = DatabaseHelperDemo._();
  static late Database _database;

  Future<Database> get database async {
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    print('dbLocation: ' + path);
    return await openDatabase(path, version: _dbVersion, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $_tableName($columnId TEXT NOT NULL, $columnName TEXT NOT NULL,"
          "$columnAge INTEGER,$columnAddress TEXT NOT NULL)");
    });
  }

  Future<int> insert(Students data) async {
    final db = await dbHelper.database;
    return await db.insert(_tableName, data.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);
      // await db.rawInsert(
      //   "INSERT Into $_tableName (name, age, address)"
      //       " VALUES (?, ?, ?)",
      //   [data.name, data.age, data.address]);

  }

  Future<List<Students>> queryAll() async {
    Database db = await dbHelper.database;
    List<Map<String, dynamic>> result = await db.rawQuery("Select * from $_tableName");
    return result.map((e) => Students.formMap(e)).toList();
  }

  Future<int> updateStudent(Students students) async {
    Database db = await dbHelper.database;
    return await db.update(_tableName,students.toMap(),where: '$columnName = ?',whereArgs: [students.name] );

  }
  Future<int> deleteStudent(String id) async {
    Database db = await dbHelper.database;
    return await db.delete(_tableName,where: '$columnId = ?',whereArgs: [id]);
  }
}
