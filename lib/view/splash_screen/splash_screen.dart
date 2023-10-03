import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/bottomnavigationbar/bottomnavbar.dart';
import 'package:instagram_clone_sas/view/register_screen/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
        (value) async {
          SharedPreferences pref = await SharedPreferences.getInstance();
      pref.getBool('checker') == false ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavScreen(),)):Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/insta.png')),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.37,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "from",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                          height: 30,
                          width: 90,
                          child: Image.asset('assets/images/metalogo.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
