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

              UiHelper.CustomText(text: "What's my number?", height: 16, color: Color(0xff25d366)),
              SizedBox(height: 30,),

              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Pakistan',
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  suffixIconColor: Color(0xff25d366),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff25d366),
                        )
                    ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff25d366),
                    )
                  )
                ),
              ),

              Row(
                children: [
                  // Country code TextFormField
                  Container(
                    width: 60, // Fixed width for country code field
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '+ 92',

                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366), // Green bottom line
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366), // Green bottom line when focused
                            width: 2.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8), // Adjust padding
                        hintStyle: TextStyle(
                          color: Colors.grey[600], // Subtle hint text color
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(fontSize: 16), // Text style for input
                      // readOnly: true, // Make it read-only to simulate country picker
                      onTap: () {
                        // Add logic for country picker (e.g., show modal or dropdown)
                        print("Country picker tapped");
                      },
                    ),
                  ),
                  SizedBox(width: 10), // Space between fields
                  // Phone number TextFormField
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.start, // Left-align for phone number
                      keyboardType: TextInputType.phone, // Numeric keyboard
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366), // Green bottom line
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366), // Green bottom line when focused
                            width: 2.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12), // Adjust padding
                        hintStyle: TextStyle(
                          color: Colors.grey[600], // Subtle hint text color
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(fontSize: 16), // Text style for input
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
