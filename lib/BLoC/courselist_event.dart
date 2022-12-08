part of '../BLoC/courselist_bloc.dart';

@immutable
abstract class CourselistEvent {}

class GetCourses extends CourselistEvent {
  final CourseRepository cursos;
  GetCourses(this.cursos);
}
