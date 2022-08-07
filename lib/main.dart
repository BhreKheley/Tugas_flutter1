import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/kalkulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Registrasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
