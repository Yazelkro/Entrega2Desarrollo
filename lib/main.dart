import 'package:flutter/material.dart';
import 'package:pruebita1/course.dart';
import 'package:pruebita1/courseSamples.dart';




void main() {
  runApp(const CoursesApp());
}

class CoursesApp extends StatelessWidget {
  const CoursesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Corsi',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 57, 19, 160),
          secondary: Color.fromARGB(255, 17, 17, 17)
        ),
      ),
      home: const MyHomePage(title: 'Corsi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {  
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Listado de Cursos', style: Theme.of(context).textTheme.headline4),
            SafeArea(
              top: false,
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: 
                  SizedBox(
                    width: 400,
                    height: 550,
                    child: ListView.builder(
                      itemCount: CourseSamples.samples.length,
                      itemBuilder: (BuildContext context, int index){
                        return buildCourseCard(CourseSamples.samples[index]);
                      }
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget buildCourseCard(Course course) {
    return Card(
      color: Color.fromARGB(255, 240, 255, 255),
      elevation: 8.0,
      clipBehavior: Clip.hardEdge,
      child: 
        Column(children: <Widget>[
            Text (course.getTitle(),style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center),
            Image(
              image: AssetImage(course.getPhoto())
            ),
            Text(course.getDescription(), textAlign: TextAlign.left)
          ]
        ),
    );
  }
}