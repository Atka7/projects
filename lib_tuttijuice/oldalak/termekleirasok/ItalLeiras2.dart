import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';

class ItalLeiras2 extends StatelessWidget {
  final assetPath;

  ItalLeiras2(
      {this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 230, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 96, 48),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Mi is a Tutti Juice?',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 500.0, width: 500.0, fit: BoxFit.fitWidth)),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text('A jegesteák új generációja ! Untuk már a szokásos tea ízeket így ebbe a kategóriába is elhoztuk a TUTTI-t!\nKóstold meg az isteni tutti-frutti ízű teánkat és rájössz, hogy ez tényleg forradalmi!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 79, 70),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        SizedBox(height: 20.0),
        Image.asset('assets/tuttijuicetea.jpg',
            height: 500.0, width: 500.0, fit: BoxFit.fitWidth),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text('A TUTTI íz egy teában!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 79, 70),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text('Tutti-frutti ízű jegestea, természetes tea kivonattal, tartósítószer nélkül, kevesebb cukorral (gyümölcscukor + édesítőszerek).\nFél évig dolgoztunk azon, hogy a “tuti tutti-frutti’ ízt egy teába varázsoljuk és végre sikerült!',
          textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 79, 70),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        Container(
            height: 200.0,
            child: GestureDetector(
              onTap: () {Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Poseidon()));},
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Image.asset(
                  'assets/poseidonbottom.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            )),
      ]),
    );
  }
}
