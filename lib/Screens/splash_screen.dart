
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';
import 'onboarding/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => WelcomeScreen())
      );
    });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/images/whatsapp_logo.png"),
           SizedBox(height: 20,),
           UiHelper.CustomText(text: "Whatsapp", height: 18, fontweight: FontWeight.w600),
         ],
       ),
     ),
    );
  }
}
