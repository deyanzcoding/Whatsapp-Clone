import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white10,

        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            offset: Offset(0, 45),
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [PopupMenuItem(child: Text('Help'))],
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            UiHelper.CustomText(
              text: "Verify +92 336 9999205",
              height: 25,
              color: Colors.black,
              fontweight: FontWeight.w600,
            ),
            SizedBox(height: 40),

            Image.asset("assets/images/otp_verification.png", scale: 3),
            SizedBox(height: 40),

            UiHelper.CustomText(
              text:
                  "Use your other phone to confirm moving WhatsApp to this one",
              height: 15,
              color: Colors.black,
              fontweight: FontWeight.w500,
              textalignment: TextAlign.center,
            ),
            SizedBox(height: 25),

            UiHelper.CustomText(
              text:
                  "Enter the 6-digit code we sent to WhatsApp on your other phone.",
              height: 15,
              color: Colors.black,
              fontweight: FontWeight.w400,
              textalignment: TextAlign.center,
            ),
            SizedBox(height: 20),

            //otp-field
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) {
            return Container(
              width: 45,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1, // only 1 digit
                decoration: InputDecoration(
                  counterText: "", // hide counter below
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            );
          })
        ),
            SizedBox(height: 40),

            UiHelper.CustomText(text: 'Need help getting a code?', height: 15, fontweight: FontWeight.w600, color: Color(0xff25d377)),
          ],
        ),
      ),
    );
  }
}
