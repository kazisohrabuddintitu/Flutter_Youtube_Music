import 'package:flutter/material.dart';
import 'package:youtube_music/Config/Color%20Config.dart';

import 'screens/myMusic.dart';
import 'screens/search.dart';
import 'widgets/RoundedContainer.dart';
import 'widgets/bottomItem.dart';
import 'widgets/settingbar.dart';
import 'widgets/smallRoundedContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);
  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int selectedIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSettingsOpen = false;
  void toggleSettings() {
    setState(() {
      isSettingsOpen = !isSettingsOpen;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MyColor.DarkGrey.withOpacity(0.5),
      drawer: Drawer(
        backgroundColor: MyColor.Grey,
        child: ListView(
          children: [
            DrawerHeader(child: Text('Profile', style: TextStyle(),)),
            ListTile(title: Text('About'),),
          ],
        ),
      ),
      body: Stack(
        children: [
          ///ListView
          Positioned(
            top: 100,
            height: size.height-120,
            width: size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Recommendations',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.35)
                                  ),

                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Egor, we have prepared\nseveral mixes for you',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),

                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 270,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 16),
                            RoundedContainer(
                                'Your mix',
                                'YouTube',
                                'Mix',
                                'images/ym.jpeg'
                            ),
                            SizedBox(width: 5),

                            RoundedContainer(
                                'Phonk mix',
                                'LSXT',
                                'CXNTURY',
                                'images/lc.jpeg'
                            ),
                            SizedBox(width: 5),

                            RoundedContainer(
                                'Phonk mix',
                                'LSXT',
                                'CXNTURY',
                                'images/4.jpeg'
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,

                          ),

                        ),

                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 16),
                            smallRoundedContainer(
                                'Bones',
                                'Chernoburkv',
                                'images/2.jpeg'
                            ),
                            SizedBox(width: 3),

                            smallRoundedContainer(
                                'After Dark',
                                'The xx',
                                'images/3.jpeg'
                            ),
                            SizedBox(width: 3),

                            smallRoundedContainer(
                                'Nekketsu',
                                'Free Flow Flava',
                                'images/4.jpeg'
                            ),
                            SizedBox(width: 3),

                            smallRoundedContainer(
                                'Nekketsu',
                                'Free Flow Flava',
                                'images/1st.jpeg'
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 270,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 16),
                            RoundedContainer(
                                'Your mix',
                                'YouTube',
                                'Mix',
                                'images/ym.jpeg'
                            ),
                            SizedBox(width: 5),

                            RoundedContainer(
                                'Phonk mix',
                                'LSXT',
                                'CXNTURY',
                                'images/lc.jpeg'
                            ),
                            SizedBox(width: 5),

                            RoundedContainer(
                                'Phonk mix',
                                'LSXT',
                                'CXNTURY',
                                'images/4.jpeg'
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ],
            ),
          ),
          ///AppBar
          Positioned(
            height: 100,
            width: size.width,
            top: 0,
            child: Column(
              children: [
                ///App Bar
                Container(
                  height: 100,
                  color: MyColor.DarkGrey.withOpacity(0.5),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                            print('Tapped the person icon');
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.1),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Hi, Egar',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.35),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                showDragHandle: true,
                                builder: (BuildContext context) {
                                return SettingsBar();
                              },
                              );
                              print('Tapped the dialpad icon');
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.dialpad,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///BottomBar
          Positioned(
            width: size.width,
            bottom: 15,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.85),
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
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: size.width*0.2,
      //   color: Colors.transparent,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Container(
      //         margin: EdgeInsets.symmetric(horizontal: 15),
      //         padding: EdgeInsets.all(16),
      //         decoration: BoxDecoration(
      //           // color: Colors.black.withOpacity(0.4),
      //           borderRadius: BorderRadius.circular(30),
      //           color: Colors.black.withOpacity(0.3),
      //         ),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             BottomItem(
      //               icon: Icons.home,
      //               label: 'Home',
      //               isSelected: selectedIndex == 0,
      //               onTap: () {
      //                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeActivity()));
      //                 print('Tapped Home');
      //                 setState(() {
      //                   selectedIndex = 0;
      //                 });
      //               },
      //             ),
      //             BottomItem(
      //               icon: Icons.assistant_navigation,
      //               label: 'Navigation',
      //               isSelected: selectedIndex == 1,
      //               onTap: () {
      //                 print('Tapped navigation');
      //                 setState(() {
      //                   selectedIndex = 1;
      //                 });
      //               },
      //             ),
      //             BottomItem(
      //               icon: Icons.search,
      //               label: 'Search',
      //               isSelected: selectedIndex == 2,
      //               onTap: () {
      //                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => search()));
      //                 print('Tapped Search');
      //                 setState(() {
      //                   selectedIndex = 2;
      //                 });
      //               },
      //             ),
      //             BottomItem(
      //               icon: Icons.play_circle_outlined,
      //               label: 'My music',
      //               isSelected: selectedIndex == 3,
      //               onTap: () {
      //                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => myMusic()));
      //                 print('Tapped music');
      //                 setState(() {
      //                   selectedIndex = 3;
      //                 });
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

