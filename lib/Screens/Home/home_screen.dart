import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/updates_screen.dart';
import 'package:whatsapp_clone/Screens/Home/community_screen.dart';
import 'package:whatsapp_clone/Screens/Home/calls_screen.dart';

import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Tracks the selected tab (0: Chats, 1: Updates, 2: Community, 3: Calls)

  // List of screens for each tab
  final List<Widget> _screens = [
    ChatsScreen(), // Replaced UpdatesScreen with ChatsScreen
    UpdatesScreen(),
    CommunityScreen(),
    CallsScreen(),
  ];

  // List of BottomNavigationBar items
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chats',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.update),
      label: 'Updates',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people_alt),
      label: 'Community',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.call),
      label: 'Calls',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xff25d366),
          ),
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey),
            onPressed: () {
              // Implement search functionality
            },
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.grey),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('Log out')),
            ],
          ),
        ],
      ),




      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _navBarItems,
        selectedItemColor: Color(0xff25d366),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 8,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new chat/status/call action based on tab
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Start a new ${_navBarItems[_currentIndex].label}')),
          );
        },
        backgroundColor: Color(0xff25d366),
        child: Icon(
          _currentIndex == 0
              ? Icons.message
              : _currentIndex == 1
              ? Icons.camera_alt
              : Icons.call,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}