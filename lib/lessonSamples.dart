//asumir que esto es modelo de infraestructura
//es para hacer una prueba para ver si funciona la app con lecciones hardcoded
//sujeto a cambios, podría tener que ser borrado

import 'lessonInfo.dart';
import 'lesson.dart';

class LessonSamples {
  static List<Lesson> samples1 = [
    Lesson.createLesson(LessonInfo(
      "A11",
      "Leccion 1: Basic tools"
    )),
    Lesson.createLesson(LessonInfo(
      "A12",
      "Leccion 2: Types of inks"
    )),
    Lesson.createLesson(LessonInfo(
      "A13",
      "Leccion 3: How to use a stylographic pen"
    )),
  ];

  static List<Lesson> samples2 = [
    Lesson.createLesson(LessonInfo(
      "A21",
      "Leccion 1: The bartender's tools"
    )),
    Lesson.createLesson(LessonInfo(
      "A22",
      "Leccion 2: How to make your first Martini"
    )),
    Lesson.createLesson(LessonInfo(
      "A23",
      "Leccion 3: Techniques for a proper stir"
    )),
  ];

  static List<Lesson> samples3 = [
    Lesson.createLesson(LessonInfo(
      "A31",
      "Leccion 1: Photography basics"
    )),
    Lesson.createLesson(LessonInfo(
      "A32",
      "Leccion 2: Lenses explained"
    )),
    Lesson.createLesson(LessonInfo(
      "A33",
      "Leccion 3: How to adjust your ISO"
    )),
  ];
}