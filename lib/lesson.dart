//esto es capa de dominio
//boceto del aggregate Lesson

import 'lesson_contents/lessonContents.dart';
import 'lessonInfo.dart';
import 'lessonCreator.dart';

class Lesson {
  late LessonID _lessonID;
  late LessonTitle _lessonTitle;

  Lesson(this._lessonID,this._lessonTitle);

  String getID() {
    return this._lessonID.identifier;
  }
  String getTitle() {
    return this._lessonTitle.title;
  }

  static Lesson createLesson(LessonInfo lessonInfo) {
    return LessonCreator.createLessonFrom(lessonInfo);
  }
}