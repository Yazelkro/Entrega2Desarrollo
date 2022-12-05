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
}