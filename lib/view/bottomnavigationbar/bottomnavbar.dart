import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/home_screen/homescreen.dart';
import 'package:instagram_clone_sas/view/newpost_screen/new_post.dart';
import 'package:instagram_clone_sas/view/profile_screen/profilescreen.dart';
import 'package:instagram_clone_sas/view/reels_screen/reels_screen.dart';
import 'package:instagram_clone_sas/view/search_screen/search.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIntex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      HomeScreen(),
      SearchPage(),
      NewPostScreen(),
      ReelsScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: _screens[selectedIntex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ' ',backgroundColor: Colors.black,),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ' '),
        ],
        currentIndex: selectedIntex,
        onTap: (value) {
          setState(() {
            selectedIntex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
