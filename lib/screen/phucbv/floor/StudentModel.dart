import 'package:floor/floor.dart';

@entity
class StudentModel {
  @primaryKey
  String id;
  String name;
  int age;
  String address;

  StudentModel(this.id, this.name, this.age, this.address);
}
