import 'dart:convert';
import 'dart:developer';

import 'package:pruebita1/network/course_model.dart';
import 'package:pruebita1/network/courselist_model.dart';
import 'package:http/http.dart' as http;

class CourseRepository {
  Future<Courselist> fetchCursos() async {
    List<CourseModel> courses = [];
    log('pide ');
    final response = await http.get(
        Uri.parse('https://639038ad65ff4183110c8ce2.mockapi.io/corsi/curso'));
    if (response.statusCode == 200) {
      log('pidiendo');
      // List<dynamic> allGames = jsonDecode();
      List<dynamic> data = jsonDecode(response.body);
      for (var course in data) {
        final nuevoCurso = CourseModel.fromJson(course);
        courses.add(nuevoCurso);
      }
      Courselist allCourses = Courselist(allCourses: courses);
      return allCourses;
    } else {
      Courselist allCourses = const Courselist(allCourses: []);
      return allCourses;
    }
  }
}
