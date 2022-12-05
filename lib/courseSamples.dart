//asumir que esto es modelo de infraestructura
//es para hacer una prueba para ver si funciona la app con cursos hardcoded
//sujeto a cambios, podría tener que ser borrado

import 'package:pruebita1/courseInfo.dart';

import 'course.dart';


class CourseSamples {
  static List<Course> samples = [
    Course.createCourse(CourseInfo(
      "A1",
      "Introduction to Penmanship",
      "assets/penmanship.jpeg",
      "Lorem Ipsum"
    )),
    Course.createCourse(CourseInfo(
      "A2",
      "Introduction to Mixology",
      "assets/bartending.jpeg",
      "Lorem Ipsum"
    )),
    Course.createCourse(CourseInfo(
      "A3",
      "Introduction to Photography",
      "assets/photographycourse.jpeg",
      "Lorem Ipsum"
    )),
  ];
}
