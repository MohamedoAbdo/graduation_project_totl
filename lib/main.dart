import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/home/presentation/password_view/forget_pass.dart';
import 'package:tourism_app/features/svscreen/Giza.dart';
import 'package:tourism_app/features/svscreen/Restaurants.dart';
import 'package:tourism_app/features/svscreen/TourismType.dart';
import 'package:tourism_app/features/svscreen/responsive_text.dart';
import 'package:tourism_app/features/svscreen/streo.dart';
import 'package:tourism_app/features/svscreen/verification.dart';
import 'package:tourism_app/splash/splash.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.`
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
//Home_Screen