import 'package:flutter/material.dart';

import '../../Widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
          child: Column(
            children: [
              UiHelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                color: Color(0xff25d366),
              ),
              SizedBox(height: 30),

              UiHelper.CustomText(
                textalignment: TextAlign.center,
                text:
                    'WhatsApp will need to verify your phone number. Carrier charges may apply.',
                height: 14,
                color: Color(0xff5E5E5E),
              ),
              SizedBox(height: 5),

              UiHelper.CustomText(text: "What\'s my number?", height: 16, color: Color(0xff25d366)),
              SizedBox(height: 30,),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pakistan',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
