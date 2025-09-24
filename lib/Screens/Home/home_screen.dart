import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/updates_screen.dart';

import 'calls_screen.dart';
import 'community_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0; // Tracks the selected tab (0: Chats, 1: Status, 2: Calls)
  // List of screens for each tab
  final List<Widget> _screens = [
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
    ),const BottomNavigationBarItem(
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
          'Whatsapp',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xff25d377),
          ),
        ),

        backgroundColor: Colors.white,
        bottomOpacity: 0,
      ),
      body: IndexedStack( // Keeps screens alive; use PageView if you prefer swipe gestures
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensures equal spacing for 4+ items
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _navBarItems,
        selectedItemColor: const Color(0xff25d366), // WhatsApp green for selected
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 8, // Slight shadow like WhatsApp
      ),


    );
  }
}
