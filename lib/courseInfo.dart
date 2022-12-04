//pequeño parameter object que encapsula los atributos de Course

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
}