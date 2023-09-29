import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String path2;

  RoundedContainer(this.title1, this.title2, this.title3, this.path2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(path2),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 0, 10),
                child: Text(
                  title1,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  title2,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                child: Text(
                  title3,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.play_circle_fill_rounded,
              color: Colors.white,
              size: 60,
            ),
          ),
        ],
      ),
    );

  }
}