class CourseModel {
/*
{
  "title": "Corporate Quality Engineer",
  "photo": "https://loremflickr.com/640/480/food",
  "description": "Cumque reprehenderit maxime sint nulla occaecati odit dolorem consequuntur.\nPariatur cumque natus quibusdam optio labore possimus illo illo.\nQui incidunt incidunt aliquid totam temporibus ipsa minus iste minima.",
  "id": "1"
}
*/

  String? title;
  String? photo;
  String? description;
  int? id;

  CourseModel({
    this.title,
    this.photo,
    this.description,
    this.id,
  });
  CourseModel.fromJson(Map<String, dynamic> json) {
    title = json['title']?.toString();
    photo = json['photo']?.toString();
    description = json['description']?.toString();
    id = json['id']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['photo'] = photo;
    data['description'] = description;
    data['id'] = id;
    return data;
  }
}
