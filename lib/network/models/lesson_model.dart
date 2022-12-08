class Lessons {
/*
{
  "name": "91882",
  "descripcion": "Neque explicabo quo id.",
  "id": "1",
  "cursoId": "1"
}
*/

  String? name;
  String? descripcion;
  int? id;
  int? cursoId;

  Lessons({
    this.name,
    this.descripcion,
    this.id,
    this.cursoId,
  });
  Lessons.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    descripcion = json['descripcion']?.toString();
    id = json['id']?.toInt();
    cursoId = json['cursoId']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['descripcion'] = descripcion;
    data['id'] = id;
    data['cursoId'] = cursoId;
    return data;
  }
}
