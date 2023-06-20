import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/manager/manager.dart';
import 'package:medical_app/screens/screens.dart';
import 'screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationLightTheme(),
      home: StartUpPage(),
    );
  }
}
