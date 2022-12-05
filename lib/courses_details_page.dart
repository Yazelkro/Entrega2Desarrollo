
import 'package:flutter/material.dart';
import 'courseDetail.dart';

class CourseDetailPage extends StatefulWidget {
  late CourseDetail courseDetail;

  CourseDetailPage({
    Key? key,
    required this.courseDetail,
  }) : super(key: key);

  @override
  _CourseDetailPageState createState() {
    return _CourseDetailPageState();
  }
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseDetail.getCourseTitle()),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Card (
                color:  Color.fromARGB(255, 240, 255, 255),
                elevation: 8,
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.courseDetail.getCoursePhoto()),
                    ),
                  ],
                ),
              ),
              
            ),
            const SizedBox(
              height:  4,
            ),
            Text("Lecciones ",style: const TextStyle(fontSize: 27, fontStyle: FontStyle.italic),textAlign: TextAlign.left),
            Expanded(
              child: 
                ListView.builder (
                  padding: const EdgeInsets.all(20.0),
                  itemCount: widget.courseDetail.getLessons().length,
                  itemBuilder: (BuildContext context, int index) {
                    final lesson = widget.courseDetail.getLessons()[index];
                    return Text(lesson.getTitle(),style: const TextStyle(fontSize: 17));
                  },
                )
              )
            ]
          ),
        ),
    );
  }
}