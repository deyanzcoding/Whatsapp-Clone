import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset("assets/images/welcome_whatsapp.png"),
        SizedBox(height: 20,),
        UiHelper.CustomText(
          text: "Welcome to WhatsApp", height: 20, color: Color(0xFF000000),)

          ],
        ),
      ),
    );
  }
}
