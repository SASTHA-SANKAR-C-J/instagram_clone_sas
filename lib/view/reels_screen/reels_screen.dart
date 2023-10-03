import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/reels_screen/reelsscreen.dart';

class ReelsScreen extends StatelessWidget {
  ReelsScreen({Key? key}) : super(key: key);

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [ReelsScreen1(),ReelsScreen1()],
      ),
    );
  }
}