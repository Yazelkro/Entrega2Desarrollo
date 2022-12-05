//asumir que esto es modelo de infraestructura
//es para hacer una prueba para ver si funciona la app con cursos hardcoded
//sujeto a cambios, podría tener que ser borrado

import 'package:pruebita1/network/courseInfo.dart';

import 'course.dart';
import 'course_services.dart';

class CourseSamples {
  static List<Course> samples = [
    loadPenCourse(),
    loadBarCourse(),
    loadPhotoCourse(),
  ];
}
