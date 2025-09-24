import 'package:flutter/material.dart';

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
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.black38),
            onPressed: () {
              // Optional: Could expand search bar or navigate to search screen
            },
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.grey),
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
            title: Text('Hassnain Uni F'),
            subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
            trailing: Text('10:12 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
            ),
            title: Text('Shogaib Uni F'),
            subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
            trailing: Text('07:53 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/deyan.jpg'),
            ),
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
            title: Text('Bilal Uni F'),
            subtitle: Text('Da ho Hassnain de sam 😂'),
            trailing: Text('07:22 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
            ),
            title: Text('Hassnain Uni F'),
            subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
            trailing: Text('10:12 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
            ),
            title: Text('Shogaib Uni F'),
            subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
            trailing: Text('07:53 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
            ),
            title: Text('Bilal Uni F'),
            subtitle: Text('Da ho Hassnain de sam 😂'),
            trailing: Text('07:22 AM'),
          ),
        ],
      ),
    );
  }
}