import 'package:flutter/material.dart';
// import 'package:testt/modules/home/person.dart';
import 'package:testt/modules/logic/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // home: PersonPage(),
    );
  }
}
