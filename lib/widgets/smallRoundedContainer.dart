import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class smallRoundedContainer extends StatelessWidget {
  final String title1;
  final String title2;
  final String path;
  smallRoundedContainer(this.title1, this.title2, this.path);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.play_circle_fill_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
          Positioned(
            left: 2,
            right: 2,
            bottom: 4,
            child: Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    title2,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )

    );

  }
}