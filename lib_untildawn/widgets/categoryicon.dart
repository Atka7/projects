import 'package:flutter/material.dart';
import 'package:rauble/pages/categorylistpage.dart';

import 'iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;

  CategoryIcon({required this.color, required this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: Container(
        color: this.color,
        padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
        child: IconFont(
          color: Colors.white,
          iconName: this.iconName,
          size: this.size,
        ),
      ),
    );
  }
}