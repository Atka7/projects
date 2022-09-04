import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';

class TermekLeirasDrink extends StatelessWidget {
  final assetPath, name, price, link, leiras;

  TermekLeirasDrink(
      {this.assetPath, this.name, this.price, this.link, this.leiras});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Vásárlás',
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
                height: 400.0, width: 400.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child:  Text(name,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text('Mutasd meg mekkora Tutti Juice TEA fan vagy!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 37, 125, 225),)),
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(leiras,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Text(price,
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 125, 225),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 37, 125, 225), // background
                    onPrimary: Colors.white,
                  ), // foreground
                  onPressed: () { launch(link);
                  },
                  child: new Text(
                    'Megveszem',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white),
                  ),
                ))),
        SizedBox(height: 50.0,),
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
