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
  int _currentIndex = 0;

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
        children: const [
          ChatsScreen(),
          UpdatesScreen(),
          CommunityScreen(),
          CallsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
        selectedItemColor: const Color(0xff25d366),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 8,
      ),
      floatingActionButton: _currentIndex == 0
          ? FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Add new contact')),
          );
        },
        backgroundColor: const Color(0xff25d366),
        child: const Icon(Icons.person_add, color: Colors.white),
      )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}