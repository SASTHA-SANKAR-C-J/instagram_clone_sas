import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/settings/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height*0.8;
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(
                Icons.lock_outline_rounded,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "sasdcruz",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {
                _displayBottomSheet(context,h=h);
              },
              icon: Icon(
                Icons.horizontal_split,
                color: Colors.black,
                size: 32,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sastha Sankar",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Hodophile#"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Posts"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("650",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Followers"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("150",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Following"),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[350]),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Edit profile",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[350]),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Share profile",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[350]),
                    child: Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            ExpansionTile(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                collapsedTextColor: Colors.black,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey[350],
                                radius: 40,
                              ),
                              Text("New"),
                            ],
                          ),
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      physics: ClampingScrollPhysics(),
                    ),
                  ),
                ],
                subtitle: Text('Keep your favorite stories on your profile'),
                title: Text('Story highlights',
                    style: TextStyle(fontWeight: FontWeight.bold))),
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
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context,h) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
    builder: (context) => Container(
      height: h,
      child: SingleChildScrollView(
        child: Column(
        children: [
          Container(height: 15,child: Column(children: [Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(height: 5,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey),),
          )],),),
          Container(
            height: 40,
            child: InkWell(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SettingsScreen(),)),
              child: ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10,),
                    Text("Settings and privacy")
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              trailing: Icon(Icons.fiber_new_rounded,color: Colors.blue,),
              title: Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Threads")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.bar_chart,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Insights"),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.av_timer,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Your activity")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.timelapse,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Archive")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.qr_code_scanner_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("QR code")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.save_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Saved")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.people_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Supervision")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.format_list_numbered_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Close Friends")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Favorites")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.person_add_alt,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("Discover people")
                ],
              ),
            ),
          ),
          SizedBox(height: 20,)
          
        ],
        ),
      ),
    ),
  );
}
