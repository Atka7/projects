import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nber_energydrink/termekleirasok/Ruhazat1.dart';

class RuhazatPage extends StatelessWidget {
  ruha1_link() async {
    if (await canLaunch(
        "https://leet.hu/termek/zsozeatya-nber-energy-drink-pulover/")) {
      await launch(
          "https://leet.hu/termek/zsozeatya-nber-energy-drink-pulover/");
    } else {
      throw 'Nem sikerült kapcsolódni a szerverekhez.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  ruha1('NBER Pulóver', 'Légy részese a kiválasztottak táborának, legyél te is Nber!', 'assets/ruha1.png', false, false,
                      context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget ruha1(String name, String detail, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Ruhazat11Detail(
                      assetPath: imgPath,
                      termekdetail: detail,
                      cookiename: name)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Center(
                    child: IconButton(
                      padding: new EdgeInsets.only(bottom: 20.0),
                      icon: Icon(Icons.shopping_bag_rounded,
                          color: Color(0xFF545D68)),
                      onPressed: () {
                        ruha1_link();
                      },
                    ),
                  ),
                ]))));
  }
}
