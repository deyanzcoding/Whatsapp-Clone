import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Calls',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white54,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt, color: Colors.grey),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Open camera for status')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.grey),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit status')),
                );
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            // Favorites header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 15),
                  child: Text(
                    'Favorites',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  margin: EdgeInsets.only(top: 8, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text('More', style: TextStyle(fontSize: 13)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Favorite calls
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                    'assets/images/hassnain_uni_f.jpeg'),
              ),
              title: Text('Hassnain Uni F'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_outlined, color: Colors.grey),
                  SizedBox(width: 15),
                  Icon(Icons.video_call, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
              ),
              title: Text('Shogaib Uni F'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_outlined, color: Colors.grey),
                  SizedBox(width: 15),
                  Icon(Icons.video_call, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
              ),
              title: Text('Bilal Uni F'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_outlined, color: Colors.grey),
                  SizedBox(width: 15),
                  Icon(Icons.video_call, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/abdullah_uni_f.jpg'),
              ),
              title: Text('Abduallah Uni F'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_outlined, color: Colors.grey),
                  SizedBox(width: 15),
                  Icon(Icons.video_call, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Recent header
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 4),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Recent calls
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                    'assets/images/hassnain_uni_f.jpeg'),
              ),
              title: Text('Hassnain Uni F'),
              subtitle: Row(
                children: [
                  Icon(Icons.call_received_outlined, color: Color(0xff25d366)),
                  Text(' August 20, 1:53 PM'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.call_outlined, color: Colors.grey)],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
              ),
              title: Text(
                'Shogaib Uni F',
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.call_received_outlined, color: Colors.red),
                  Text(' August 13, 11:59 PM'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.call_outlined, color: Colors.grey)],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
              ),
              title: Text('Bilal Uni F'),
              subtitle: Row(
                children: [
                  Icon(Icons.call_made_outlined, color: Color(0xff25d366)),
                  Text(' Yesterday, 1:53 PM'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.call_outlined, color: Colors.grey)],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/abdullah_uni_f.jpg'),
              ),
              title: Text('Abduallah Uni F'),
              subtitle: Row(
                children: [
                  Icon(Icons.call_made_outlined, color: Color(0xff25d366)),
                  Text(' August 14, 1:53 PM'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.call_outlined, color: Colors.grey)],
              ),
            ),
          ],
        )
    );
  }
}