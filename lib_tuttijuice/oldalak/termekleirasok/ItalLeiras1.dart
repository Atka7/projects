import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';

class ItalLeiras1 extends StatelessWidget {
  final assetPath;

  ItalLeiras1(
      {this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 229, 250),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 125, 225),
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
          child: Text('A Tutti Juice az egyetlen olyan ital amely ötvözi a zseniálisan finom tutti-frutti ízt és a cool megjelenést, életérzést amit egy energiaital ad, de koffein és más egészségromboló anyagok nélkül, valamint minden korosztálynak megfelelő!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 125, 225),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        SizedBox(height: 20.0),
        Image.asset('assets/tuttijuiceteli.jpg',
            height: 500.0, width: 500.0, fit: BoxFit.fitWidth),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text('A TUTTI íz vitaminokkal!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 125, 225),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text('Tutti-frutti ízű, koffeinmentes, enyhén szénsavas, alkoholmentes ital steviával, cukorral és vitaminokkal.\nRengeteg teszt után született meg a “tuti tutti-frutti” amely nem túl édes, de nem is savanyú és főleg nem keserű, pontosan olyan amilyennek lennie kell.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 125, 225),
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
