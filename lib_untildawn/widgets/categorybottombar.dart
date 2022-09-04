import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rauble/helpers/appcolors.dart';

class CategoryBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black.withOpacity(0.2),
          offset: Offset.zero,
        )
      ]),
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.users,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.fire,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.cog,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
