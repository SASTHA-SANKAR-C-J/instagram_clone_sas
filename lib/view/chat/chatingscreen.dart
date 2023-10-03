import 'package:flutter/material.dart';

class ChatingScreen extends StatefulWidget {
  const ChatingScreen({super.key, required this.name});
  final String name;
  @override
  State<ChatingScreen> createState() => _ChatingScreenState();
}

class _ChatingScreenState extends State<ChatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: (){
          Navigator.pop(context);
        },),
        title: Row(children: [CircleAvatar(radius: 15,),SizedBox(width: 15,),Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),),
            Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 13),),
          ],
        ),],),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.phone_outlined,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.label_outline_rounded,color: Colors.black,))],
      ),
      body: ListView(
        children: [
          Column(children: [
            CircleAvatar(radius: 60,),
            SizedBox(height: 10,),
            Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            Text("${widget.name} . Instagram",style: TextStyle(color: Colors.black,fontSize: 15),),
            Text("256 followers . 0 posts",style: TextStyle(color: Colors.grey,fontSize: 15),),
            Text("You follow each other on Instagram",style: TextStyle(color: Colors.grey,fontSize: 15),),
            Text("You both follow padmapriya__cj and 6 others",style: TextStyle(color: Colors.grey,fontSize: 15),),
            TextButton(onPressed: (){}, child: Text("View Profile",style: TextStyle(color: Colors.black),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[350]),),)
          ],)
        ],
      ),





       bottomNavigationBar: Padding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[350]),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(width: 8,),
                  CircleAvatar(radius: 22,backgroundColor: Colors.blue,child: Icon(Icons.camera_alt_rounded,size: 26,color: Colors.white,),),
                  SizedBox(width: 10,),
                  Container(height: 60,width: MediaQuery.of(context).size.width*0.43,
                    child: Center(
                      child: TextField(cursorColor: Colors.grey,
                        decoration: InputDecoration(border: UnderlineInputBorder(borderRadius: BorderRadius.zero,borderSide: BorderSide.none),hintText: "Message...",hintStyle: TextStyle(color: Colors.grey,fontSize: 18))),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(Icons.mic_none_rounded,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Icon(Icons.image,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Icon(Icons.comment,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Icon(Icons.add_circle_outline_sharp,size: 30,),
                    ),
                ],
              ),
            ),
          ),
    );
  }
}