import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final Function onTap;

  const BottomItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.red : Colors.white.withOpacity(0.35),
            size: 18,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.white.withOpacity(0.35),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}


