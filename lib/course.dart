//esto es capa de dominio
//boceto del aggregate Course

import 'package:pruebita1/courseCreator.dart';

import 'course_contents/courseContents.dart';
import 'courseInfo.dart';

class Course {
  late CourseID _courseID;
  late CourseTitle _courseTitle;
  late CoursePhoto _coursePhoto;
  late CourseDescription _courseDescription;

  Course(this._courseID,this._courseTitle,this._coursePhoto,this._courseDescription);
  
  String getID() {
    return this._courseID.identifier;
  }
  String getTitle() {
    return this._courseTitle.title;
  }
  String getPhoto() {
    return this._coursePhoto.photo;
  }
  String getDescription() {
    return this._courseDescription.description;
  }

  static Course createCourse(CourseInfo courseInfo) {
    return CourseCreator.createCourseFrom(courseInfo);
  }

  //recordar agregar comportamientos de ser necesario. Seguramente lo sea, pronto
   

}