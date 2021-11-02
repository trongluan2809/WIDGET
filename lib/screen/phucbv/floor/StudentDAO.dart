import 'package:floor/floor.dart';
import 'package:widget_of_the_week/screen/phucbv/floor/StudentModel.dart';

@dao
abstract class StudentDAO {
  @Query('SELECT * FROM StudentModel ')
  Future<List<StudentModel>> getListStudent();

  @insert
  Future<void> insertStudentModel(List<StudentModel> list);

  @update
  Future<void> updateStudentModel(StudentModel studentModel);


  @delete
  Future<void> deleteStudentModel(StudentModel studentModel);
}

//flutter packages pub run build_runner build
//flutter packages pub run build_runner watch