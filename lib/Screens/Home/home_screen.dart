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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onBottomNavTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
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
        onTap: _onBottomNavTapped,
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
          ? Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Open Meta AI')),
              );
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            splashColor: Colors.grey.withOpacity(0.3), // Subtle tap effect
            child: Image.asset(
              'assets/images/metaAi.png',
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(height: 10), // Space between buttons
          FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Add new contact')),
              );
            },
            backgroundColor: const Color(0xff25d366),
            child: const Icon(Icons.person_add, color: Colors.white),
          ),
        ],
      )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}