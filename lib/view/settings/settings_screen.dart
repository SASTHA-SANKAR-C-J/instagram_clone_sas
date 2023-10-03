import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/register_screen/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<void> setcheck({required bool value}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('checker', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Settings and privacy",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SearchBar(
              elevation: MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(Colors.grey[350]),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 20)),
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Your account",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Accounts Center",
                        style: TextStyle(color: Colors.black)),
                    subtitle: Text("Password, security, personal details, ads",
                        style: TextStyle(color: Colors.grey)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  child: Text(
                    "Manage your connected experiencesnand account settings across Meta technologires",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "How you use Instagram",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.add_alert_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Notifications",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.timelapse,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Time spent",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "For professonals",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Business tools and controls",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "What you see",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Favorites",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.alarm_off_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Muted accounts",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.video_collection_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Suggested content",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Like count",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Who can see your content",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.lock_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Account privacy",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.stars_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Close Friends",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.block_flipped,
                      color: Colors.black,
                      size: 30,
                    ),
                    title:
                        Text("Blocked", style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Hide story and live",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "How others can interact with you",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.messenger_outline_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Messaged and story replies",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.alternate_email_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Tags and mentions",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title:
                        Text("Comments", style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.replay_circle_filled_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Sharing and remixes",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_off_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Restricted",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.production_quantity_limits_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Limited interactions",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.abc,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Hidden words",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_add,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Follow and invite friends",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Your app and media",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.download_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Archiving and downloading",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.accessibility,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Accessibility",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.language_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    title:
                        Text("Language", style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.network_cell,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Data usage and media quality",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.computer,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Web permissions",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "For families",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.supervised_user_circle_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Supervision",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Your orders and fundraisers",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.check_box_outline_blank,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Orders and payments",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "More info and support",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.help_outline_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Help", style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("Account Status",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text("About", style: TextStyle(color: Colors.black)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text("Add account",
                        style: TextStyle(color: Colors.blue)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      setcheck(value: true);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                          (route) => false);
                    },
                    child: ListTile(
                      title: Text("Log out its_ambadikkanan_tours",
                          style: TextStyle(color: Colors.red)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      setcheck(value: true);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                          (route) => false);
                    },
                    child: ListTile(
                      title: Text("Log out all accounts",
                          style: TextStyle(color: Colors.red)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
