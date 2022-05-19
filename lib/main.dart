import 'package:flutter/material.dart';
import 'package:projet_2cs_interface/UI/home_page/home_page.dart';
import 'package:projet_2cs_interface/UI/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter web login ui',
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage()
        }
    );
  }
}
