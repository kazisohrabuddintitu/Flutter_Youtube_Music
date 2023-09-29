import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Config/Color Config.dart';
import '../main.dart';
import '../widgets/bottomItem.dart';
import 'search.dart';

class myMusic extends StatefulWidget {
  const myMusic({Key? key}) : super(key: key);

  @override
  State<myMusic> createState() => _myMusicState();
}

class _myMusicState extends State<myMusic> {
  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.DarkGrey.withOpacity(0.8),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                    border: InputBorder.none,
                    icon: Icon(Icons.search,color: Colors.white.withOpacity(0.5),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
              child: Text(
                'My music',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),

              ),

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: MyColor.Red,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red[900],
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Liked songs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            'YT playlist . 1703 songs',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red[600],
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Play",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    height: 340,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.hotel_class_sharp,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'mymusic',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Playlist . 123 songs',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        width: 180,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple[300],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.electric_bolt,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'relax',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      'Playlist . 26 songs',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2,),
                      Container(
                        width: 180,
                        height: 170,
                        decoration: BoxDecoration(
                            color: MyColor.Grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.auto_stories_rounded,
                                    color: Colors.red[900],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Astroworld',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      'Album - Travis Scott',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    height: 340,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.hotel_class_sharp,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'Your Text Here',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        width: 180,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.hotel_class_sharp,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Your Text Here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.hotel_class_sharp,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Your Text Here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        ]
      ),
      bottomNavigationBar: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomItem(
                    icon: Icons.home,
                    label: 'Home',
                    isSelected: selectedIndex == 0,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeActivity()));
                      print('Tapped Home');
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                  ),
                  BottomItem(
                    icon: Icons.assistant_navigation,
                    label: 'Navigation',
                    isSelected: selectedIndex == 1,
                    onTap: () {
                      print('Tapped navigation');
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                  ),
                  BottomItem(
                    icon: Icons.search,
                    label: 'Search',
                    isSelected: selectedIndex == 2,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => search()));
                      print('Tapped Search');
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                  ),
                  BottomItem(
                    icon: Icons.play_circle_outlined,
                    label: 'My music',
                    isSelected: selectedIndex == 3,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => myMusic()));
                      print('Tapped music');
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ),

    );
  }
}
