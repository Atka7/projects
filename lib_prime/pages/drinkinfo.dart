import 'package:flutter/material.dart';

import '../main.dart';
import 'drinkinfos.dart';

class DrinkInfo extends StatelessWidget {
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
                      'assets/blue1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      context),
                  termek(
                      'TROPICAL PUNCH',
                      'assets/punch1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      context),
                  termek(
                      'LEMON LIME',
                      'assets/lime1.png',
                      'Zero added sugar​',
                      '20 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      context),
                  termek(
                      'GRAPE',
                      'assets/grape1.png',
                      'Zero added sugar​',
                      '25 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
                      context),
                  termek(
                      'ORANGE',
                      'assets/orange1.png',
                      'Zero added sugar​',
                      '20 Calories​',
                      '10% Coconut Water​',
                      '825mg of Electrolytes',
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

  Widget termek(String name, String imgPath, String detail1, String detail2, String detail3, String detail4,
       context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Drinkinfos(
                      assetPath: imgPath,
                      name: name,
                      detail1: detail1,
                      detail2: detail2,
                      detail3: detail3,
                      detail4: detail4,
                  )));
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 270.0,
                          width: 270.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.fitHeight)))),
                  SizedBox(height: 20.0),
                ])));
  }
}