//clase que une al aggregate Course y al aggregate Lesson

import 'package:pruebita1/lesson.dart';
import 'course.dart';

class CourseDetail {
  late Course _course;
  late List<Lesson> _lessons;

  CourseDetail(this._course,this._lessons);

  String getCourseTitle() {
    return this._course.getTitle();
  }
  String getCoursePhoto() {
    return this._course.getPhoto();
  }
  List<Lesson> getLessons() {
    return this._lessons;
  }
}