import 'package:flutter/material.dart';

import 'chatingscreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List filters = [
    ' All 2',
    ' Primary 2',
    ' General ',
    ' Requests ',
  ];
  List name = [
    'Ayyappadas',
    'Sree Vava',
    'Nishku ',
    'Padmapriya',
    'Pavithra',
    'Sadhik A',
    'Nikson',
    'Nishku ',
    'Padmapriya',
    'Pavithra',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: (){Navigator.pop(context);},),
        title: Row(children: [Text("ambadikk...",style: TextStyle(color: Colors.black),),IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.black,))],),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_outward_rounded,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.pin_end_sharp,color: Colors.black,))],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.78,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Search",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ))
                    ],
                  ),
                ),
                TextButton(onPressed: (){}, child: Text('Filter')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Container(height: 37,width: double.infinity,
              child: ListView.builder(itemCount: 4,shrinkWrap: true,scrollDirection: Axis.horizontal,physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(height: 15,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350]),child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Text(filters[index]),
                  ),),
                ),),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: ListTile(
              leading: CircleAvatar(radius: 35,),
              title: Text(name[index]),
              subtitle: Text("2 new messages"),
              trailing: Icon(Icons.camera_alt_outlined,size: 30,color: Colors.black,),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatingScreen(name: name[index],),));
              },
                      ),
            ),)
        ],
      ),
    );
  }
}