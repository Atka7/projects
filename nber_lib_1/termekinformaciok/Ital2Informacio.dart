import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ital2Informacio extends StatelessWidget {
  final assetPath;

  Ital2Informacio({this.assetPath});

  link() async {
    if (await canLaunch(
        "https://leet.hu/termek/zsozeatya-nber-energy-drink/")) {
      await launch("https://leet.hu/termek/zsozeatya-nber-energy-drink/");
    } else {
      throw 'Nem sikerült kapcsolódni a szerverekhez.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Ital Információ',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('NBER Energy',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 216, 87, 32),)),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 300.0, width: 300.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child: Text('NBER Üccsi',
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text('“Csapd ki Te is, ha vagány vagy!”',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Text('termekdetail',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 216, 87, 32),
                  fontFamily: 'Varela',
                  fontSize: 20.0)),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 216, 87, 32), // background
                    onPrimary: Colors.white,
                  ), // foreground
                  onPressed: () {
                    link();
                  },
                  child: new Text(
                    'Megveszem',
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )))
      ]),
    );
  }
}
