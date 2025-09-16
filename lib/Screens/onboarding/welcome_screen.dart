import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/onboarding/login_screen.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String selectedLang = "English"; // Match with languages list

  List<String> languages = ["English", "Pashto", "Chinese", "Japanese", "Korean"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/welcome_whatsapp.png", scale: 3),
            SizedBox(height: 40),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 27,
              color: Color(0xFF000000),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                  children: [
                    TextSpan(text: "Read our "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Color(0xff0C42CC),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: ". Tap \"Agree and continue\" to accept the "),
                    TextSpan(
                      text: "Terms of Service.",
                      style: TextStyle(
                        color: Color(0xff0C42CC),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 105.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.language, color: Color(0xff25d366)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
                items: languages.map((String lang) {
                  return DropdownMenuItem(
                    child: Text(lang),
                    value: lang,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedLang = value!;
                  });
                },
                value: selectedLang,
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff25d366)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: UiHelper.CustomButton(
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          buttonname: "Agree and continue",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}