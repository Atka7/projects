import 'package:flutter/material.dart';
import 'package:tuttijuice/oldalak/termekleirasok/termekleiras_drink.dart';
import 'package:tuttijuice/oldalak/termekleirasok/termekleiras_tea.dart';

class Termekszinek extends StatefulWidget {
  @override
  _TermekszinekState createState() => _TermekszinekState();
}

class _TermekszinekState extends State<Termekszinek> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
Widget termekkek(String name, String type, String ar, String imgPath,
    String detail, String link, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TermekLeirasDrink(
                    assetPath: imgPath,
                    name: name,
                    price: ar,
                    leiras: detail,
                    link: link)));
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Hero(
                        tag: imgPath,
                        child: Container(
                            height: 125.0,
                            width: 125.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.fitHeight)))),
                    SizedBox(height: 7.0),
                    Center(
                      child: Text(type,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 233, 78),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                    ),
                    Center(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 3.0,
                          ),
                          child: Text(name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF575E67),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0)),
                        )),
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child:
                        Container(color: Color(0xFFEBEBEB), height: 1.0)),
                    Center(
                      child: Text(ar,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 233, 78),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                  ]))
      ));
}


Widget termektea(String name, String type, String ar, String imgPath,
    String detail, String link, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TermekLeirasTea(
                    assetPath: imgPath,
                    name: name,
                    price: ar,
                    leiras: detail,
                    link: link)));
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Hero(
                        tag: imgPath,
                        child: Container(
                            height: 125.0,
                            width: 125.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.fitHeight)))),
                    SizedBox(height: 7.0),
                    Center(
                      child: Text(type,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 233, 78),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                    ),
                    Center(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 3.0,
                          ),
                          child: Text(name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF575E67),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0)),
                        )),
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child:
                        Container(color: Color(0xFFEBEBEB), height: 1.0)),
                    Center(
                      child: Text(ar,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 233, 78),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                  ]))
      ));
}

