//esto es para probar que funcionan las clases de la carpeta network
//para ver si hay conversion adecuada de JSON a objetos de dominio
//puede estar sujeto a cambios, luego hay que hacer que funcione con un API

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:pruebita1/lesson.dart';
import 'dart:convert';
import 'network/lessonInfo.dart';
import 'lessonCreator.dart';


String _loadPenLesson1Asset() {
  return ('assets/lessonPen1.json');
}

String _loadPenLesson2Asset() {
  return ('assets/lessonPen2.json');
}

String _loadPenLesson3Asset() {
  return ('assets/lessonPen3.json');
}

String _loadBarLesson1Asset() {
  return ('assets/lessonBar1.json');
}

String _loadBarLesson2Asset() {
  return ('assets/lessonBar2.json');
}

String _loadBarLesson3Asset() {
  return ('assets/lessonBar3.json');
}

String _loadPhotoLesson1Asset() {
  return ('assets/lessonPhoto1.json');
}

String _loadPhotoLesson2Asset() {
  return ('assets/lessonPhoto2.json');
}

String _loadPhotoLesson3Asset() {
  return ('assets/lessonPhoto3.json');
}


Lesson loadPen1Course() {
  String jsonString = _loadPenLesson1Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadPen2Course() {
  String jsonString = _loadPenLesson2Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadPen3Course() {
  String jsonString = _loadPenLesson3Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadBar1Course() {
  String jsonString = _loadBarLesson1Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadBar2Course() {
  String jsonString = _loadBarLesson2Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadBar3Course() {
  String jsonString = _loadBarLesson3Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadPhoto1Course() {
  String jsonString = _loadPhotoLesson1Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadPhoto2Course() {
  String jsonString = _loadPhotoLesson2Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}

Lesson loadPhoto3Course() {
  String jsonString = _loadPhotoLesson3Asset();
  final jsonResponde = json.decode(jsonString);
  return LessonCreator.createLessonFrom(LessonInfo.fromJson(jsonResponde));
}
