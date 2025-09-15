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
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('Help')),
              ]
          )
        ],
      ),
      
      
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomText(text: "Verify +92 336 9999205", height: 20, color: Colors.black, fontweight: FontWeight.w700),
            SizedBox(height: 40,),

            Image.asset('assets/images/otp_verification.png'),
          ],
        ),
      ),
      
    );
  }
}
