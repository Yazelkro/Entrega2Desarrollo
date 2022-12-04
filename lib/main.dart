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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
            Text (course.getTitle().title,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center),
            Image(
              image: AssetImage(course.getPhoto().photo)
            ),
            Text(course.getDescription().description, textAlign: TextAlign.left)
          ]
        ),
    );
  }
}