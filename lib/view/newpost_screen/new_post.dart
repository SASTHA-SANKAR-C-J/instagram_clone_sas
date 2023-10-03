import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/data/image_data.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 3 - 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          // onTap: () => ,
          child: Icon(Icons.close,color: Colors.black,size: 35,)),
        title: Text("New Post",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: 17),))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height*0.5,color: Colors.blueAccent,child: Image.network(imageList[10].imageUrl, fit: BoxFit.cover),),
            Container(height: 50,width: double.infinity,color: Colors.white,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(onPressed: (){}, child: Text("Recents",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
                    Icon(Icons.arrow_downward,color: Colors.black,),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(radius: 13,backgroundColor: Colors.grey,child: Icon(Icons.book,color: Colors.white,size: 17,),),
                    SizedBox(width: 7,),
                    CircleAvatar(radius: 13,backgroundColor: Colors.grey,child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 17,),),
                    SizedBox(width: 7,),
                  ],
                ),
              ],
            ),),
            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
          itemCount: imageList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: width,
                      width: width,
                      child: Image.network(imageList[index].imageUrl, fit: BoxFit.cover),
                    ),
                  ),)
          ],
        ),
      ),
    );
  }
}

