import 'package:json_annotation/json_annotation.dart';

part 'lesson_model.g.dart';

@JsonSerializable()
class APILessonQuery {
  factory APILessonQuery.fromJson(Map<String, dynamic> json) =>   
    _$APILessonQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APILessonQueryToJson(this);

  @JsonKey(name: 'q')
  String query;
  int from;
  int to;
  bool more;
  int count;
  List<APIHits> hits;

  APILessonQuery ({
    required this.query,
    required this.from,
    required this.to,
    required this.more,
    required this.count,
    required this.hits,
  });
}

@JsonSerializable()
class APIHits {
  APILesson lesson;

  APIHits ({
    required this.lesson
  });

  factory APIHits.fromJson(Map<String, dynamic> json) =>
    _$APIHitsFromJson(json);
  
  Map<String, dynamic> toJson() => _$APIHitsToJson(this);
}

@JsonSerializable()
class APILesson {
  String id;
  String title;

  APILesson ({
    required this.id,
    required this.title,
  });

  factory APILesson.fromJson(Map<String, dynamic> json) =>
    _$APILessonFromJson(json);
  Map<String, dynamic> toJson() => _$APILessonToJson(this);
}