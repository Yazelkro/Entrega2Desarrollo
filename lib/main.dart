import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:pruebita1/network/models/courselist_model.dart';
import 'package:pruebita1/network/models/course_model.dart';
import 'package:pruebita1/repository/curso_repository.dart';
import 'package:pruebita1/BLoC/courselist_bloc.dart';

import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(const CoursesApp());
}

class CoursesApp extends StatelessWidget {
  const CoursesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Corsi',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            primary: Color.fromARGB(255, 57, 19, 160),
            secondary: Color.fromARGB(255, 17, 17, 17)),
      ),
      home: BlocProvider(
        create: (context) => CourselistBloc(CourseRepository()),
        child: const MyHomePage(title: 'Corsi'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<CourselistBloc, CourselistState>(
        builder: (context, state) {
          if (state is CourselistLoading) {
            log('bbb');
            return const CourseLoadingScreen();
          } else if (state is CourselistLoaded) {
            log('zzz');
            return CourseListWidget(courselist: state.courselist);
          } else if (state is CourselistError) {
            log('aaa');
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Error'));
          }
        },
      ),
    );
  }
}

class CourseLoadingScreen extends StatelessWidget {
  const CourseLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('c');
    final courselistBloc = BlocProvider.of<CourselistBloc>(context);
    log('d');
    courselistBloc.add(GetCourses(courselistBloc.courseRepository));
    log('e');
    return const Center(child: CircularProgressIndicator());
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class CourseListWidget extends StatelessWidget {
  const CourseListWidget({Key? key, required this.courselist})
      : super(key: key);
  final Courselist courselist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: courselist.allCourses.length,
        itemBuilder: (BuildContext context, int index) {
          CourseModel course = courselist.allCourses[index];
          return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 255, 255),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ListTile(
                  title: Text(course.title!),
                  subtitle: Text(course.description!),
                  leading: Image(image: AssetImage(course.photo!)),
                  /*onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseDetailPage(course: course),
                      ),
                    );
                  },*/
                ),
              ));
        });
  }
}



/*
  @override
  Widget buildCourseCard(Course course) {
    return Card(
      color: Color.fromARGB(255, 240, 255, 255),
      elevation: 8.0,
      clipBehavior: Clip.hardEdge,
      child: Column(children: <Widget>[
        Text(course.getTitle(),
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center),
        Image(image: AssetImage(course.getPhoto())),
        Text(course.getDescription(), textAlign: TextAlign.left)
      ]),
    );
  }*/

