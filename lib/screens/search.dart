import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Config/Color Config.dart';
import '../main.dart';
import '../widgets/bottomItem.dart';
import 'myMusic.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  int selectedIndex = 2;

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
