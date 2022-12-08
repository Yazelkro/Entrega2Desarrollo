import 'package:equatable/equatable.dart';
import 'package:pruebita1/course.dart';
import 'package:pruebita1/network/models/course_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'courselist_model.g.dart';

@JsonSerializable()
class Courselist extends Equatable {
  final List<dynamic> allCourses;

  const Courselist({
    required this.allCourses,
  });

  factory Courselist.fromJson(Map<String, dynamic> json) =>
      _$CourselistFromJson(json);
  Map<String, dynamic> toJson() => _$CourselistToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}
