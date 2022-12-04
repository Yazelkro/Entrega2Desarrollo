// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APICourseQuery _$APICourseQueryFromJson(Map<String, dynamic> json) {
  return APICourseQuery(
    query: json['q'] as String,
    from: json['from'] as int,
    to: json['to'] as int,
    more: json['more'] as bool,
    count: json['count'] as int,
    hits: (json['hits'] as List<dynamic>)
        .map((e) => APIHits.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$APICourseQueryToJson(APICourseQuery instance) =>
    <String, dynamic>{
      'q': instance.query,
      'from': instance.from,
      'to': instance.to,
      'more': instance.more,
      'count': instance.count,
      'hits': instance.hits,
    };

APIHits _$APIHitsFromJson(Map<String, dynamic> json) {
  return APIHits(
    course: APICourse.fromJson(json['course'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APIHitsToJson(APIHits instance) => <String, dynamic>{
      'course': instance.course,
    };

APICourse _$APICourseFromJson(Map<String, dynamic> json) {
  return APICourse(
    id: json['id'] as String,
    title: json['title'] as String,
    photo: json['photo'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$APICourseToJson(APICourse instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'photo': instance.photo,
      'description': instance.description,
    };
