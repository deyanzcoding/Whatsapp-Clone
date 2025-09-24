import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Communities',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: Colors.white54,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Edit communities')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          SizedBox(height: 20),
          // New community
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/community.png'),
                  height: 80,
                  width: 80,
                ),
                Text(
                  'New community',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // 1st community (Awkum updates)
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/awkum.jpeg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'Awkum updates',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade300),
          // Announcements
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/announcement.png'),
            ),
            title: Text('Announcements'),
            subtitle: Text('~Ashar Ahmad replied to an...'),
            trailing: Text('5:21 AM'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/view.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(height: 2, color: Colors.grey.shade300),
          SizedBox(height: 20),
          // 2nd community (GDG Live Pakistan)
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/gdg.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'GDG Live Pakistan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade300),
          // Announcements
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/announcement.png'),
            ),
            title: Text('Announcements'),
            subtitle: Text('~maqsood Ali joined fro..'),
            trailing: Text('8/12/25'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/gdg_live.png'),
            ),
            title: Text('DevFest Pakistan\'24'),
            subtitle: Text('+92 348 8888888 joined fro...'),
            trailing: Text('9/12/25'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/view.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}