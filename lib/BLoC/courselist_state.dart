part of '../network/courselist_bloc.dart';

@immutable
abstract class CourselistState {}

class CourselistInitial extends CourselistState {}

class CourselistLoading extends CourselistState {}

class CourselistLoaded extends CourselistState {
  final Courselist courselist;
  CourselistLoaded(this.courselist);
}

class CourselistError extends CourselistState {
  final String message;
  CourselistError(this.message);
}
