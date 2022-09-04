import 'package:flutter/material.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 37, 125, 225),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                '',
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 37, 125, 225),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/optionslogo.png'))),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.globe,
                color: Colors.white,
              ),
              title: Text(
                'Weboldal',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {launch("https://nberenergydrink.hu/")},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.store,
                color: Colors.white,
              ),
              title: Text(
                'Rendelés',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {launch("https://nberenergydrink.hu/#rendeles")},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.truck,
                color: Colors.white,
              ),
              title: Text(
                'Viszonteladóknak',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () =>
              {launch("https://nberenergydrink.hu/#viszonteladoknak")},
            ),
            ListTile(
              leading:  Icon(
                FontAwesomeIcons.checkCircle,
                color: Colors.white,
              ),
              title: Text(
                'Info',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Poseidon()))},
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                'Bezárás',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
