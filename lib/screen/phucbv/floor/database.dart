import 'dart:async';
import 'package:floor/floor.dart';
import 'package:widget_of_the_week/screen/phucbv/floor/StudentDAO.dart';
import 'StudentModel.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [StudentModel])
abstract class DemoStudentDatabase extends FloorDatabase {
  StudentDAO get studentDAO;
}
