import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../Widgets/ui_helper.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String _phoneNumber = '+92 336 9999205';
    void _showConfirmationDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Matches the rounded corners
            ),
            title: Text(
              'Is this the correct number?',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _phoneNumber,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  // Add edit logic here if needed
                },
                child: Text('Edit', style: TextStyle(color: Color(0xff25d366))),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff25d366), // Green color for Yes button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text('Yes'),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center, // Center the buttons
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white10,
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            icon: Icon(Icons.more_vert, color: Colors.black,),
            offset: Offset(0, 45),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('Link as companion device')),
              PopupMenuItem(child: Text('Help')),
            ],
          ),
        ],
      ),
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

              UiHelper.CustomText(
                text: "What's my number?",
                height: 16,
                color: Color(0xff25d366),
              ),
              SizedBox(height: 30),

              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Pakistan',
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  suffixIconColor: Color(0xff25d366),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff25d366),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff25d366)),
                  ),
                ),
              ),

              Row(
                children: [
                  // Country code TextFormField
                  Container(
                    width: 90, // Compact width for "+92"
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xff25d366),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: CountryCodePicker(
                      initialSelection: 'PK',
                      // Starts with Pakistan (+92)
                      favorite: ['PK', 'IN', 'US', 'GB', 'SA'],
                      // Limit to these 5 countries in dropdown
                      showDropDownButton: true,
                      // Shows dropdown arrow
                      padding: EdgeInsets.zero,
                      // Remove extra padding for compact look
                      textStyle: TextStyle(fontSize: 16, color: Colors.black),
                      dialogTextStyle: TextStyle(fontSize: 16),
                      // Style for dropdown items
                      showFlag: false,
                      // Show country flags in dropdown (optional, like WhatsApp)
                      showOnlyCountryWhenClosed: false,
                      // Show dial code when closed
                      alignLeft: false, // Center the content
                    ),
                  ),

                  SizedBox(width: 10), // Space between fields
                  // Phone number TextFormField
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      // Left-align for phone number
                      keyboardType: TextInputType.phone,
                      // Numeric keyboard
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366), // Green bottom line
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25d366),
                            // Green bottom line when focused
                            width: 2.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 12,
                        ),
                        // Adjust padding
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

      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: UiHelper.CustomButton(callback: () {
          _showConfirmationDialog();
        }, buttonname: 'Next'),
      ),
    );
  }
}
