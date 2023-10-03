import 'package:flutter/material.dart';

class ReelsScreen1 extends StatefulWidget {
  const ReelsScreen1({super.key});

  @override
  State<ReelsScreen1> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/3.jpg'),fit: BoxFit.fill)),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black,
              ),
              Positioned(
                  top: 30,
                  left: 10,
                  child: Text(
                    "Reels",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
              Positioned(
                  top: 20,
                  right: 10,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ))),
              Positioned(
                right: 10,
                bottom: 20,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        )),
                    Text(
                      "30.5k",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.white,
                        )),
                    Text(
                      "30",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        )),
                    Text(
                      "6,002",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.square_rounded,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Positioned(
                left: 10,
                bottom: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "_dhe_maniac_offical",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("sunami...",
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
