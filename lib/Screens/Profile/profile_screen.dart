import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Widgets/ui_helper.dart';

import '../Home/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

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
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage==null ? CircleAvatar(
                radius: 70,
                backgroundColor: Color(0xffD9D9D9),
                child: Icon(Icons.add_a_photo , size: 60, color: Colors.grey,),
              ) : CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              )
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
          buttonname: "Next", callback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  //function for open the menu of selecting image just
  _openBottom(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        height: 200,
        width: 200,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: () {
              _pickImage(ImageSource.camera);
            }, icon: Icon(Icons.add_a_photo, size: 80, color: Colors.grey,),),
            IconButton(onPressed: () {
              _pickImage(ImageSource.gallery);
            }, icon: Icon(Icons.image, size: 80, color: Colors.grey,),)

          ],
          )
        ],
        ),
      );
    });
  }

  //function for picking image
  _pickImage(ImageSource imagesource) async {
    try {
    final photo = await ImagePicker().pickImage(source: imagesource);
    if(photo == null) return;
    final tempimage = File(photo.path);
    setState(() {
      pickedimage = tempimage;
    });
    } catch(ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()), backgroundColor: Color(0xff25d377),));
    }
  }
}

