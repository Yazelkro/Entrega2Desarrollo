//asumir que esto es modelo de infraestructura
//es para hacer una prueba para ver si funciona la app con lecciones hardcoded
//sujeto a cambios, podría tener que ser borrado

import 'network/lessonInfo.dart';
import 'lesson.dart';
import 'lesson_services.dart';

class LessonSamples {
  static List<Lesson> samples1 = [
    loadPen1Course(),
    loadPen2Course(),
    loadPen3Course()
  ];

  static List<Lesson> samples2 = [
    loadBar1Course(),
    loadBar2Course(),
    loadBar3Course()
  ];

  static List<Lesson> samples3 = [
    loadPhoto1Course(),
    loadPhoto2Course(),
    loadPhoto3Course()
  ];
}