// factory temporal para encapsular creacion de objetos tipo Lesson, de momento lo dejo fuera del aggregate

import 'package:pruebita1/course_contents/courseContents.dart';
import 'package:pruebita1/lessonInfo.dart';

import 'lesson_contents/lessonContents.dart';
import 'lesson.dart';
import 'courseInfo.dart';

class LessonCreator {
  static Lesson createLessonFrom(LessonInfo lessonInfo) {
    LessonID lessonID = LessonID(lessonInfo.getID());
    LessonTitle lessonTitle = LessonTitle(lessonInfo.getTitle());

    return Lesson(lessonID,lessonTitle);
  }
}