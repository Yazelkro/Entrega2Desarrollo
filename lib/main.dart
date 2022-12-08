import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:pruebita1/network/models/courselist_model.dart';
import 'package:pruebita1/network/models/course_model.dart';
import 'package:pruebita1/repository/curso_repository.dart';
import 'package:pruebita1/BLoC/courselist_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(const CoursesApp());
}

class CoursesApp extends StatelessWidget {
  const CoursesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourselistBloc(CourseRepository()),
      child: const Appview(title: 'Corsi'),
    );
  }
}

class Appview extends StatelessWidget {
  const Appview({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourselistBloc, CourselistState>(
      builder: (context, state) {
        return const MaterialApp(home: ListPage());
      },
    );
  }
}

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Corsi'),
      ),
      body: BlocBuilder<CourselistBloc, CourselistState>(
        builder: (context, state) {
          log(state.toString());
          if (state is CourselistLoading || state is CourselistInitial) {
            final courselistBloc = BlocProvider.of<CourselistBloc>(context);
            courselistBloc.add(GetCourses(courselistBloc.courseRepository));
            return const Center(child: CircularProgressIndicator());
          } else if (state is CourselistLoaded) {
            return CourseListWidget(courselist: state.courselist);
          } else if (state is CourselistError) {
            return Dialog(child: Text(state.message));
          } else {
            return const Center(child: Text('Error'));
          }
        },
      ),
    );
  }
}

/*class CourseLoadingScreen extends StatelessWidget {
  const CourseLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courselistBloc = BlocProvider.of<CourselistBloc>(context);

    courselistBloc.add(GetCourses(courselistBloc.courseRepository));

    return const Center(child: CircularProgressIndicator());
  }
}
*/
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 127, 172, 204)),
                child: ListTile(
                  title: Text(course.title!),
                  subtitle: Text(course.description!),
                  //leading: Image(image: AssetImage(course.photo!)),
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

