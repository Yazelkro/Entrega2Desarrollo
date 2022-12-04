//recordar refactorizar para que sea flexible, extensible, etc, cumpliendo los principios de la arquitectura hexagonal.
//esto deberia ser capa de infraestructura

import 'package:json_annotation/json_annotation.dart';

part 'course_model.g.dart';

@JsonSerializable()
class APICourseQuery {
  factory APICourseQuery.fromJson(Map<String, dynamic> json) =>   
    _$APICourseQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APICourseQueryToJson(this);

  @JsonKey(name: 'q')
  String query;
  int from;
  int to;
  bool more;
  int count;
  List<APIHits> hits;

  APICourseQuery ({
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
  APICourse course;

  APIHits ({
    required this.course
  });

  factory APIHits.fromJson(Map<String, dynamic> json) =>
    _$APIHitsFromJson(json);
  
  Map<String, dynamic> toJson() => _$APIHitsToJson(this);
}

@JsonSerializable()
class APICourse {
  String id;
  String title;
  String photo;
  String description;

  APICourse ({
    required this.id,
    required this.title,
    required this.photo,
    required this.description
  });

  factory APICourse.fromJson(Map<String, dynamic> json) =>
    _$APICourseFromJson(json);
  Map<String, dynamic> toJson() => _$APICourseToJson(this);
}
