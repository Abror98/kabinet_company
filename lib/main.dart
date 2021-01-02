import 'package:flutter/material.dart';
import 'package:kabinet_company/screens/select_language.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectLanguage(),
    );
  }
}


