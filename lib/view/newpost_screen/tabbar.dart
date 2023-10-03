import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/newpost_screen/new_post.dart';

class Tab extends StatefulWidget {
  const Tab({super.key, required Icon icon});

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        body: Column(
        children: [
          const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.grid_on_sharp,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(Icons.person_pin_outlined, color: Colors.black),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Center(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 50,
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        "No Posts Yet",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 50,
                      ),
                      Icon(
                        Icons.person_add,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        "Photos and videos of you",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
        ],
          ),
      )
    );
  }
}