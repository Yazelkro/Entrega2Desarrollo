////asumir que esto es modelo de infraestructura
//es para hacer una prueba para ver si funciona la app con lecciones hardcoded en segunda vista
//sujeto a cambios, podría tener que ser borrado

import 'lessonSamples.dart';
import 'courseSamples.dart';
import 'courseDetail.dart';

class CourseDetailSamples {
  static List<CourseDetail> samples = [
    CourseDetail(CourseSamples.samples[0],LessonSamples.samples1),
    CourseDetail(CourseSamples.samples[1],LessonSamples.samples2),
    CourseDetail(CourseSamples.samples[2],LessonSamples.samples3),
  ];
}