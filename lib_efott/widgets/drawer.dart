import 'package:efott/helpers/appcolors.dart';
import 'package:efott/sites/hazigazda.dart';
import 'package:efott/sites/sponsors.dart';
import 'package:efott/sites/tickets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.HIGHLIGHT,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                '',
              ),
              decoration: BoxDecoration(
                  color: AppColors.HIGHLIGHT,
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/efott.png'))),
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'KEDVENCEK',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {

              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.music,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'FELLÉPŐK',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {

              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.solidCalendarAlt,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'NAPI BONTÁS',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {

              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.solidMap,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'FESZTIVÁLTÉRKÉP',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {

              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.ticketAlt,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'JEGYEK',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Tickets()))
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.userAlt,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'HÁZIGAZDA',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Hazigazda()))
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.infoCircle,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'INFÓK',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {

              },
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.checkmark_seal_fill,
                size: 25.0,
                color: AppColors.HIGHLIGHT_PINK,
              ),
              title: const Text(
                'TÁMOGATÓK',
                style: TextStyle(
                    color: AppColors.SECONDARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Sponsors()))
              },
            ),

          ],
        ),
      ),
    );
  }
}
