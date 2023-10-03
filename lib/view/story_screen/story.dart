import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: MediaQuery.of(context).size.height * 0.925,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/3.jpg'),fit: BoxFit.fill)
                    ),
                height: MediaQuery.of(context).size.height * 0.925,
                width: double.infinity,

                // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetName'))),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.blue,
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                subtitle: Text(
                  "heeriye",
                  style: TextStyle(color: Colors.white),
                ),
                title: Row(
                  children: [
                    Text(
                      "gireesh.pulapatta",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "23h",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Center(
                        child: TextField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide.none),
                                hintText: "Send message",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 15))),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
              child: Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
              child: Icon(
                Icons.send,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
