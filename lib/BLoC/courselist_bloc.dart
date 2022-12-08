import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:pruebita1/network/models/courselist_model.dart';
import 'package:pruebita1/repository/curso_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'courselist_event.dart';
part 'courselist_state.dart';

class CourselistBloc extends HydratedBloc<CourselistEvent, CourselistState> {
  final CourseRepository courseRepository;

  CourselistBloc(this.courseRepository) : super(CourselistInitial()) {
    on<GetCourses>((event, emit) async {
      try {
        emit(CourselistLoading());
        final courselist = await courseRepository.fetchCursos();
        emit(CourselistLoaded(courselist));
      } catch (e) {
        log(e.toString());
        emit(CourselistError('Error al cargar los cursos'));
      }
    });
  }

  @override
  CourselistState? fromJson(Map<String, dynamic> json) {
    try {
      log("aiuda");
      final courselist = Courselist.fromJson(json);
      return CourselistLoaded(courselist);
    } catch (e) {
      log(e.toString());
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
