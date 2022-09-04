import 'package:flutter/material.dart';

import '../main.dart';
import 'drinkinfos.dart';

class Webshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
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
                  termek(
                      'BLUE RASPBERRY',
                      '12PK / 29.99 DOLLAR',
                      'assets/blue1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      'https://drinkprime.com/products/blue-raspberry',
                      context),
                  termek(
                      'TROPICAL PUNCH',
                      '12PK / 29.99 DOLLAR',
                      'assets/punch1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      'https://drinkprime.com/products/tropical-punch',
                      context),
                  termek(
                      'LEMON LIME',
                      '12PK / 29.99 DOLLAR',
                      'assets/lime1.png',
                      'Zero added sugar​',
                      '20 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      'https://drinkprime.com/products/lemon-lime',
                      context),
                  termek(
                      'GRAPE',
                      '12PK / 29.99 DOLLAR',
                      'assets/grape1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      'https://drinkprime.com/products/grape',
                      context),
                  termek(
                      'ORANGE',
                      '12PK / 29.99 DOLLAR',
                      'assets/orange1.png',
                      'Zero added sugar​',
                      '20 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      'https://drinkprime.com/products/orange',
                      context),
                ],
              )),
          Container(
              height: 200.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
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
    );
  }

  Widget termek(String name, String ar, String imgPath, String detail1, String detail2, String detail3, String detail4,
      String link, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Drinkinfos(
                    assetPath: imgPath,
                    name: name,
                    //price: ar,
                    //link: link,
                    detail1: detail1,
                    detail2: detail2,
                    detail3: detail3,
                    detail4: detail4,
                  )));
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
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 3.0,
                            ),
                            child: Text(name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF575E67),
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
                                color: Color.fromARGB(255, 157, 210, 42),
                                fontWeight: FontWeight.w300,
                                fontSize: 14.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                    ]))));
  }
}