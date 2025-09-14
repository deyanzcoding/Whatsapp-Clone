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
  // @override
  //  void initState() {
  //    // TODO: implement initState
  //    super.initState();
  //    Timer(Duration(seconds: 3), () {
  //      Navigator.pushReplacement(context,
  //        MaterialPageRoute(builder: (context) => WelcomeScreen())
  //      );
  //    });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(bottom: 280),
              child: Image.asset("assets/images/whatsapp_logo.png", scale: 5),
            ),
            Column(
              children: [
                UiHelper.CustomText(
                  text: "from",
                  height: 18,
                  fontweight: FontWeight.w600,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/meta.png', scale: 5,),
                    UiHelper.CustomText(
                      text: "Meta",
                      height: 20,
                      fontweight: FontWeight.w600,
                      color: Color(0xff25d366),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
