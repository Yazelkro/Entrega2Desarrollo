//esto es capa de dominio
//boceto del aggregate Course

import 'course_contents/courseContents.dart';

class Course {
  late CourseID _courseID;
  late CourseTitle _courseTitle;
  late CoursePhoto _coursePhoto;
  late CourseDescription _courseDescription;

  CourseID getID() {
    return this._courseID;
  }
  CourseTitle getTitle() {
    return this._courseTitle;
  }
  CoursePhoto getPhoto() {
    return this._coursePhoto;
  }
  CourseDescription getDescription() {
    return this._courseDescription;
  }

  //recordar agregar comportamientos de ser necesario. Seguramente lo sea, pronto
   

}