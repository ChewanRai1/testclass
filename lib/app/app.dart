// import 'package:flutter_application_1/Screen/add_two_no.dart';
// import 'package:flutter_application_1/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';
import 'package:taskk/Screen/splash_screen.dart';
// import 'package:flutter_application_1/Screen/simple_interest.dart';
// import 'package:flutter_application_1/Screen/task_screen.dart';
// import 'package:flutter_application_1/Screen/student_details_screen.dart';
// import 'package:flutter_application_1/Screen/arithmetic_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
