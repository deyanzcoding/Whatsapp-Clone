import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/onboarding/otp_verification_screen.dart';
import '../../Widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedContries = "Pakistan";
  List<String> country = ["Pakistan", "India", "Bangladesh", "Nepal", "UAE"];
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedCountryCode = "+92"; // Default to Pakistan's code

  @override
  Widget build(BuildContext context) {
    String _phoneNumber = '$selectedCountryCode ${phoneController.text}'; // Dynamically build phone number

    void _showConfirmationDialog() {
      if (_formKey.currentState!.validate()) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
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
                  },
                  child: Text('Edit', style: TextStyle(color: Color(0xff25d366))),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpVerificationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff25d366),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text('Yes'),
                ),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          },
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter a valid 10-digit phone number')),
        );
      }
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
            icon: Icon(Icons.more_vert, color: Colors.black),
            offset: Offset(0, 45),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('Link as companion device')),
              PopupMenuItem(child: Text('Help')),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey, // Attach form key
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
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff25d366),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff25d366),
                        width: 1.5,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  items: country.map((String lang) {
                    return DropdownMenuItem(
                      child: Text(lang),
                      value: lang,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedContries = value!;
                    });
                  },
                  value: selectedContries,
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff25d366)),
                ),
                SizedBox(height: 10), // Add spacing
                Row(
                  children: [
                    Container(
                      width: 90,
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
                        favorite: ['PK', 'IN', 'US', 'GB', 'SA'],
                        showDropDownButton: true,
                        padding: EdgeInsets.zero,
                        textStyle: TextStyle(fontSize: 16, color: Colors.black),
                        dialogTextStyle: TextStyle(fontSize: 16),
                        showFlag: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        onChanged: (CountryCode code) {
                          setState(() {
                            selectedCountryCode = code.dialCode; // Update country code when changed
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: phoneController,
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a phone number';
                          }
                          if (value.length != 10 || !RegExp(r'^\d{10}$').hasMatch(value)) {
                            return 'Please enter a 10-digit phone number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff25d366),
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff25d366),
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: UiHelper.CustomButton(
          callback: _showConfirmationDialog,
          buttonname: 'Next',
        ),
      ),
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}