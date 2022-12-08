import 'package:equatable/equatable.dart';
//import 'package:pruebita1/network/Lesson_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lessonlist_model.g.dart';

@JsonSerializable()
class Lessonlist extends Equatable {
  final List<dynamic> allLessons;

  const Lessonlist({
    required this.allLessons,
  });

  factory Lessonlist.fromJson(Map<String, dynamic> json) =>
      _$LessonlistFromJson(json);
  Map<String, dynamic> toJson() => _$LessonlistToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}
