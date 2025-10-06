import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'userDummyChat.dart'; // Import the UserDummyChat screen

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xff25d366),
          ),
        ),
        backgroundColor: Colors.white54,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {
            _pickImage(ImageSource.camera);
          }, icon: const Icon(Icons.add_a_photo, color: Colors.black),),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onSelected: (value) {
              if (value == 'new_group') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('New group')),
                );
              } else if (value == 'settings') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Settings')),
                );
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'new_group', child: Text('New group')),
              const PopupMenuItem(value: 'new_community', child: Text('New Community')),
              const PopupMenuItem(value: 'broadcast_list', child: Text('Broadcast list')),
              const PopupMenuItem(value: 'linked_devices', child: Text('Linked devices')),
              const PopupMenuItem(value: 'starred', child: Text('Starred')),
              const PopupMenuItem(value: 'read_all', child: Text('Read all')),
              const PopupMenuItem(value: 'settings', child: Text('Settings')),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.search, color: Colors.grey[600]),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Ask Meta AI or Search',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey[600]),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Chat list
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Hassnain Uni F'),
            subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
            trailing: Text('10:12 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/uni_friendz.jpg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Uni frndz ❣️🥰'),
            subtitle: Text('Sbala platter frie...'),
            trailing: Text('10:12 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Shogaib Uni F'),
            subtitle: Text('Shogaib reacted 😂 to "Sta ..."'),
            trailing: Text('07:53 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/deyan.jpg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text(
              '(You)',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Explain container widg...'),
            trailing: Text('07:49 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/abdullah_uni_f.jpg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Abdullah Uni F'),
            subtitle: Row(
              children: [
                Icon(Icons.call_missed_outgoing, size: 16, color: Colors.red),
                SizedBox(width: 4),
                Text('Voice call'),
              ],
            ),
            trailing: Text('07:49 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Bilal Uni F'),
            subtitle: Text('Da ho Hassnain de sam 😂'),
            trailing: Text('07:22 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Hassnain Uni F'),
            subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
            trailing: Text('10:12 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Shogaib Uni F'),
            subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
            trailing: Text('07:53 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDummyChat()),
              );
            },
            title: Text('Bilal Uni F'),
            subtitle: Text('Da ho Hassnain de sam 😂'),
            trailing: Text('07:22 AM'),
          ),
        ],
      ),
    );
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
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()), backgroundColor: Color(0xff25d377),));
    }
  }
}