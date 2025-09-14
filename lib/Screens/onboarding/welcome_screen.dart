import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/onboarding/login_screen.dart';
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
            Image.asset("assets/images/welcome_whatsapp.png", scale: 3,),
            SizedBox(height: 40),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0xFF000000),
            ),
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RichText(
                // by default text of rich text
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "",
                  style: TextStyle(color: Colors.black38, fontSize: 16),

                  children: [
                    TextSpan(text: "Read our "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: Color(0xff0C42CC), fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ". Tap \"Agree and continue\" to accept the ",
                    ),
                    TextSpan(
                      text: "Terms of Service.",
                      style: TextStyle(color: Color(0xff0C42CC), fontSize: 15, fontWeight: FontWeight.w600d),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            Container(
              height: 45,
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.white.withOpacity(0.8), // Slight transparency

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45), // Rounded corners
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.language, color: Colors.green), // Globe icon
                    SizedBox(width: 8.0), // Space between icon and text
                    Text(
                      'English',
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(width: 12.0), // Space before dropdown arrow
                    Icon(Icons.arrow_drop_down, color: Colors.green), // Dropdown arrow
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: UiHelper.CustomButton(
        callback: () {
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttonname: "Agree and continue",
       )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
