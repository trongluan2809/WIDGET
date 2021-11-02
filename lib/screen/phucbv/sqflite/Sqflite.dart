import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:widget_of_the_week/screen/phucbv/floor/StudentModel.dart';
import 'package:widget_of_the_week/screen/phucbv/floor/database.dart';
import 'package:widget_of_the_week/screen/phucbv/sqflite/DatabaseHelper.dart';
import 'package:widget_of_the_week/screen/phucbv/sqflite/Students.dart';

class SqfLiteDemo extends StatefulWidget {
  @override
  _SqfLiteDemo createState() => _SqfLiteDemo();
}

class _SqfLiteDemo extends State<SqfLiteDemo> {

  int count =0;
  List<StudentModel> list =[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          FlatButton(
            onPressed: () async {
              count++;
              Students student = Students(id: "$count",name: 'Miichisoft $count', age: 23, address: 'Nghe An');
              list.add(StudentModel("$count", "name", 20, "address"));
              //insertStudent(list);
              await DatabaseHelperDemo.dbHelper
                  .insert(student);
              var result = await DatabaseHelperDemo.dbHelper.queryAll();
              print('name check :: ${result.length}');

              //getListStudent();
            },
            child: Text(
              'Insert',
              style: TextStyle(color: Colors.red),
            ),
          ),
          FlatButton(
            onPressed: () async {
              count++;
             await DatabaseHelperDemo.dbHelper
                 .updateStudent(Students(id: "9", name: "Miichisoft 5", age: 12, address: "address updated"));
             var result = await DatabaseHelperDemo.dbHelper.queryAll();
              print('listStudent: $result');
            },
            child: Text(
              'Update',
              style: TextStyle(color: Colors.green),
            ),
          ),
          FlatButton(
            onPressed: () async {
              await DatabaseHelperDemo.dbHelper
                  .deleteStudent("9");
              var result = await DatabaseHelperDemo.dbHelper.queryAll();

            },
            child: Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }


  // Future<void> insertStudent(List<StudentModel> list) async{
  //   final database = await $FloorDemoStudentDatabase.databaseBuilder('Student_Floor.db').build();
  //   final dao = database.studentDAO;
  //   dao.insertStudentModel(list);
  // }
  //
  // Future<void> getListStudent() async {
  //   final database = await $FloorDemoStudentDatabase.databaseBuilder('Student_Floor.db').build();
  //   final dao = database.studentDAO;
  //   var listFromDb = await dao.getListStudent();
  //   print('list db:$listFromDb');
  // }


}
