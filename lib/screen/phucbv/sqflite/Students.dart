import 'package:sqflite/sqflite.dart';

class Students {
  String id = "";
  String name = "";
  int age = 0;
  String address = "";

  Students(
      {required this.id,
      required this.name,
      required this.age,
      required this.address});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'address': address
    };
    return map;
  }

  Students.formMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    age = map['age'];
    address = map['address'];
  }
  @override
  String toString() {
    return 'Students{id: $id, name: $name, age: $age,address:$address}';
  }
}
