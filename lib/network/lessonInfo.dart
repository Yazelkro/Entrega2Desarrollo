//parameter object para encapsular atributos de Lesson

class LessonInfo {
  String _identifier = "";
  String _title = "";

  LessonInfo(this._identifier,this._title);

  String getID() {
    return this._identifier;
  }
  String getTitle() {
    return this._title;
  }

  factory LessonInfo.fromJson(Map<String, dynamic> json){
    return LessonInfo(
      json['identifier'] as String,
      json['title'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'identifier': _identifier,
      'title': _title
    };
  }
}