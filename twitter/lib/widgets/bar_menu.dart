import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/share_state.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';

class BarMenu extends StatefulWidget {
  const BarMenu({super.key});

  @override
  State<BarMenu> createState() => _BarMenuState();
}

class _BarMenuState extends State<BarMenu> {
  int _currentIndex = 0;

  List<Widget> ListScreens = [
    HomeScreen(),
    SearchScreen(),
    NotificationsScreen(),
    ChatsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              size: 30,
              //color: Colors.blue,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.email,
              size: 30,
            ),
            label: '')
      ],
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListScreens[index],
          ),
        );
      },
    );
  }
}
