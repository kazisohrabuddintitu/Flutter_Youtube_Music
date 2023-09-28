import 'package:flutter/material.dart';
import 'package:youtube_music/Config/Color%20Config.dart';

import 'widgets/bottomItem.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.DarkGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Tapped the person icon');
                  },
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Hi, Egar',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.35),
                      fontSize: 12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      print('Tapped the dialpad icon');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.dialpad,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                        fontSize: 10,
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
                          fontSize: 16,
                          color: Colors.white,
                      ),

                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 200,),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child:  Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomItem(
                    icon: Icons.home,
                    label: 'Home',
                    onTap: () {
                      print('Tapped Home');

                    },
                  ),
                  BottomItem(
                    icon: Icons.assistant_navigation,
                    label: 'Navigation',
                    onTap: () {
                      print('Tapped Search');
                    },
                  ),
                  BottomItem(
                    icon: Icons.search,
                    label: 'Search',
                    onTap: () {
                      print('Tapped Favorites');
                    },
                  ),
                  BottomItem(
                    icon: Icons.play_circle_outlined,
                    label: 'My music',
                    onTap: () {
                      print('Tapped Settings');
                    },
                  ),
                ],
              ),
            ),
          ),
      ]
    )
    );
  }
}

