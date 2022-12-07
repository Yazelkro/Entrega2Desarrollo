import 'package:flutter/foundation.dart';
import 'package:pruebita1/network/courselist_model.dart';
import 'package:pruebita1/repository/curso_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part '../BLoC/courselist_event.dart';
part '../BLoC/courselist_state.dart';

class CourselistBloc extends HydratedBloc<CourselistEvent, CourselistState> {
  final CourseRepository courseRepository;

  CourselistBloc(this.courseRepository) : super(const CourselistLoading()) {
    on<GetCourses>((event, emit) => _onCourseLoading);
  }

  _onCourseLoading(CourselistLoading event, Emitter<int> emit) async* {
    try {
      yield const CourselistLoading();
      final courselist = await courseRepository.fetchCursos();
      yield CourselistLoaded(courselist);
    } catch (e) {
      // print(e.toString());
      yield CourselistError(e.toString());
    }
  }

  @override
  CourselistState? fromJson(Map<String, dynamic> json) {
    try {
      final courselist = Courselist.fromJson(json);
      return CourselistLoaded(courselist);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CourselistState state) {
    if (state is CourselistLoaded) {
      return state.courselist.toJson();
    } else {
      return null;
    }
  }
}
