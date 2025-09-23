

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            UiHelper.CustomText(text: "Profile info", height: 22, color: Color(0xff25d377), fontweight: FontWeight.w700),
            SizedBox(height: 30,),

         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: UiHelper.CustomText(text: "Please provide your name and an optionl profile photo.", height: 16, textalignment: TextAlign.center)
         ),
          ],
        ),
      ),
    );
  }
}
