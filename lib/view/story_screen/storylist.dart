import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/story_screen/story.dart';

class StoryList extends StatelessWidget {
  StoryList({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [StoryScreen(),StoryScreen(),StoryScreen()],
      ),
    );
  }
}