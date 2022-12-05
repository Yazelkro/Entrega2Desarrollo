// factory temporal para encapsular creacion de objetos tipo Lesson, de momento lo dejo fuera del aggregate

import 'package:pruebita1/network/lessonInfo.dart';

import 'lesson_contents/lessonContents.dart';
import 'lesson.dart';

class LessonCreator {
  static Lesson createLessonFrom(LessonInfo lessonInfo) {
    LessonID lessonID = LessonID(lessonInfo.getID());
    LessonTitle lessonTitle = LessonTitle(lessonInfo.getTitle());

    return Lesson(lessonID,lessonTitle);
  }
}