import 'package:flutter/material.dart';
import 'package:tourism_app/splash/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff6C3428)),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
//Splash