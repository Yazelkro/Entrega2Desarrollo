//pequeño parameter object que encapsula los atributos de Course
//tambien sera quien serialize y deserialize con JSON
//capa de infraestructura

class CourseInfo {
  String _identifier = "";
  String _title = "";
  String _photo = "";
  String _description = "";

  CourseInfo(this._identifier,this._title,this._photo,this._description);
  
  String getID() {
    return this._identifier;
  }
  String getTitle() {
    return this._title;
  }
  String getPhoto() {
    return this._photo;
  }
  String getDescription() {
    return this._description;
  }

  factory CourseInfo.fromJson(Map<String, dynamic> json) {
    return CourseInfo(
      json['identifier'] as String,
      json['title'] as String,
      json['photo'] as String,
      json['description'] as String
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'identifier': _identifier,
      'title': _title,
      'photo': _photo,
      'description': _description
    };
  }
}