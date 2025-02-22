import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}