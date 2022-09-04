import 'package:flutter/material.dart';
import 'package:tuttijuice/widgets/options.dart';
import 'package:tuttijuice/oldalak/termekleirasok/ItalLeiras1.dart';
import 'package:tuttijuice/oldalak/termekleirasok/ItalLeiras2.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';

class Italinfok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 37, 125, 225),
          title: Text('Mi is a ...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
        ),
        backgroundColor: Color(0xFFFCFAF8),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                  width: MediaQuery.of(context).size.width - 30.0,
                  height: MediaQuery.of(context).size.height - 50.0,
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    padding:
                    EdgeInsets.only(right: 15.0, left: 15.0, bottom: 130.0),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      ital1('assets/italinfo1.jpg', context),
                      ital2('assets/italinfo2.jpg', context),
                    ],
                  )),
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
            ],
          ),
        ));
  }

  //--------------------------------------------------
//                      1. Termék
//--------------------------------------------------

  Widget ital1(String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ItalLeiras1(
                    assetPath: imgPath,
                  )));
            },
            child: Container(
                child: Column(children: [
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 250.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                ]))));
  }
}

//--------------------------------------------------
//                      2. Termék
//--------------------------------------------------

Widget ital2(String imgPath, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ItalLeiras2(
                  assetPath: imgPath,
                )));
          },
          child: Container(
              child: Column(children: [
                Hero(
                    tag: imgPath,
                    child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath), fit: BoxFit.contain)))),
              ]))));
}
