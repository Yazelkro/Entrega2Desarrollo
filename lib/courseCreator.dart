/*esto es un factory que podria ser temporal para encapsular un poco la creacion 
de objetos de tipo Course
Esto es capa de dominio, no estoy seguro de si el factory deberia ir dentro del aggregate
de momento se deja fuera
*/

import 'course_contents/courseContents.dart';
import 'course.dart';
import 'courseInfo.dart';

class CourseCreator {
  static Course createCourseFrom(CourseInfo courseInfo) {
    CourseID courseID = CourseID(courseInfo.getID());
    CourseTitle courseTitle = CourseTitle(courseInfo.getTitle());
    CoursePhoto coursePhoto = CoursePhoto(courseInfo.getPhoto());
    CourseDescription courseDescription = CourseDescription(courseInfo.getDescription());

    return Course(courseID,courseTitle,coursePhoto,courseDescription); 
  }
}