//Whatsapp Clone project

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/home_screen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
        useMaterial3: false,
      ),
      // home: SplashScreen()
      home: HomeScreen(),

    );
  }
}
