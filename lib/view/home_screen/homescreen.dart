import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/data/image_data.dart';
import 'package:instagram_clone_sas/view/story_screen/story.dart';
import 'package:instagram_clone_sas/view/story_screen/storylist.dart';
import 'package:instagram_clone_sas/widgets/circle_story.dart';

import '../chat/chatscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.network(
          "https://1000logos.net/wp-content/uploads/2017/02/Logo-Instagram-1-768x432.png",
          width: width * 0.35,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
              },
              icon: Icon(
                Icons.messenger_outline,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.14,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StoryList(),)),
                        child: CircleStory()
                      ),
                      Text("_susum_me "),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              physics: ClampingScrollPhysics(),
            ),
          ),
          SizedBox(
            height: 6.5,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 22,
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 30,
                      )),
                  title: Text(
                    "mr_and_mrs_malayale",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Tobermory, Ontario"),
                ),
                Container(
                  height: height * 0.4,
                  child: Image.asset('assets/images/$index.jpg',fit: BoxFit.fitWidth,),
                  width: double.infinity,
                  color: Colors.white,
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.comment_bank_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.send_outlined),
                            SizedBox(width: width*0.65,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.archive_outlined,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("475 likes"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("mr_and_mrs_malayalee"),
                            Text("Tobry trip"),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("View all 5 comment",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(radius: 10,),
                              SizedBox(width: 5,),
                              Text("Add a comment...",style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text("8 hours ago",style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),)
        ],
      ),
    );
  }
}
