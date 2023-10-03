import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/bottomnavigationbar/bottomnavbar.dart';
import 'package:instagram_clone_sas/view/newpost_screen/new_post.dart';
import 'package:instagram_clone_sas/view/profile_screen/profilescreen.dart';
import 'package:instagram_clone_sas/view/reels_screen/reels_screen.dart';
import 'package:instagram_clone_sas/view/reels_screen/reelsscreen.dart';
import 'package:instagram_clone_sas/view/register_screen/register_screen.dart';
import 'package:instagram_clone_sas/view/search_screen/search.dart';
import 'package:instagram_clone_sas/view/settings/settings_screen.dart';
import 'package:instagram_clone_sas/view/splash_screen/splash_screen.dart';
import 'package:instagram_clone_sas/view/story_screen/story.dart';
import 'package:instagram_clone_sas/view/chat/chatingscreen.dart';
import 'view/home_screen/homescreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );}}