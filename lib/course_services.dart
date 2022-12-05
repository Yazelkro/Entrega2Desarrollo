//esto es para probar que funcionan las clases de la carpeta network
//para ver si hay conversion adecuada de JSON a objetos de dominio
//puede estar sujeto a cambios, luego hay que hacer que funcione con un API

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'network/courseInfo.dart';
import 'courseCreator.dart';
import 'course.dart';


String _loadPenCourseAsset() {
  return 'assets/penmanshipCourse.json';
}

String _loadBarCourseAsset() {
  return ('assets/bartendingCourse.json');
}

String _loadPhotoCourseAsset() {
  return ('assets/photographyCourse.json');
}

Course loadPenCourse() {
  String jsonString = _loadPenCourseAsset();
  final jsonResponde = json.decode(jsonString);
  return CourseCreator.createCourseFrom(CourseInfo.fromJson(jsonResponde));
}

Course loadBarCourse() {
  String jsonString = _loadBarCourseAsset();
  final jsonResponde = json.decode(jsonString);
  return CourseCreator.createCourseFrom(CourseInfo.fromJson(jsonResponde));
}

Course loadPhotoCourse() {
  String jsonString = _loadPhotoCourseAsset();
  final jsonResponde = json.decode(jsonString);
  return CourseCreator.createCourseFrom(CourseInfo.fromJson(jsonResponde));
}


