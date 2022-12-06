// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APILessonQuery _$APILessonQueryFromJson(Map<String, dynamic> json) {
  return APILessonQuery(
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

Map<String, dynamic> _$APILessonQueryToJson(APILessonQuery instance) =>
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
    lesson: APILesson.fromJson(json['lesson'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APIHitsToJson(APIHits instance) => <String, dynamic>{
      'lesson': instance.lesson,
    };

APILesson _$APILessonFromJson(Map<String, dynamic> json) {
  return APILesson(
    id: json['id'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$APILessonToJson(APILesson instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
