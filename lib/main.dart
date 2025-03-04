import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'Sales_App/Home_Screan.dart';
// import 'Session_3_task/Session_3_task.dart';
// import 'BMI_Calculator/Calculation_Page.dart';
import 'presentation/Sign_up.dart';
import 'presentation/Sign_in.dart';
import 'presentation/home_pages/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
