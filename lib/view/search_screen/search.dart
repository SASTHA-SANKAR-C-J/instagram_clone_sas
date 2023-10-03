import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/data/image_data.dart';
import 'package:instagram_clone_sas/view/reels_screen/reels_screen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 3 - 2;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 20)),
            ),
          ),
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
          itemCount: imageList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ReelsScreen(),)),
                      child: Container(
                        height: width,
                        width: width,
                        child: Image.network(imageList[index].imageUrl, fit: BoxFit.cover),
                      ),
                    ),
                  ),)
        ],
      ),
    );
  }
}
