import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final Function onTap;

  const BottomItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomItemState createState() => _BottomItemState();
}

class _BottomItemState extends State<BottomItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            widget.icon,
            color: isSelected ? Colors.red : Colors.white.withOpacity(0.35),
            size: 18,
          ),
          SizedBox(height: 4),
          Text(
            widget.label,
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

