import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Profile info",
              height: 22,
              color: Color(0xff25d377),
              fontweight: FontWeight.w600,
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: UiHelper.CustomText(
                text: "Please provide your name and an optionl profile photo.",
                height: 16,
                textalignment: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),

            //circle avatar
            CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xffD9D9D9),
              child: Icon(Icons.add_a_photo , size: 60, color: Colors.grey,),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 280,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(color: Color(0xff8c8888)),

                      border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff25d377),
                        width: 2,
                      )
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25d377), width: 1.3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25d377), width: 2),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.emoji_emotions_outlined,size: 30, color: Color(0xff8c8888),)
              ],
            ),

          ],
        ),
      ),


      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: UiHelper.CustomButton(
          // callback: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => LoginScreen()),
          //   );
          // },
          buttonname: "Agree and continue", callback: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
