import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';
import 'package:tuttijuice/widgets/termekszinek.dart';

class ItalokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 30.0,
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                padding:
                EdgeInsets.only(right: 15.0, left: 15.0, bottom: 130.0),
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 9.0,
                childAspectRatio: 1.0,
                children: <Widget>[
                  termekkek(
                      'TUTTI JUICE',
                      'Ital',
                      '4 500 Ft',
                      'assets/ital1.jpg',
                      'A tuti íz, koffein nélkül, vitaminokkal. \nAz egyetlen tutti-frutti ízű, koffeinmentes, enyhén szénsavas üdítőital, vitaminokkal, pasztőrözve.',
                      'https://tuttishop.hu/tutti-juice/21-tutti-juice-24db.html',
                      context),
                  termektea(
                      'TUTTI JUICE TEA',
                      'Ital',
                      '4 500 Ft',
                      'assets/ital2.jpg',
                      'A jegesteák új generációja! \nUntuk már a szokásos jegestea ízeket, így elhoztuk a TUTTI-t ebbe a kategóriába is! Kóstold meg az ISTENI tutti-frutti ízű Tutti Juice TEÁ-t !',
                      'https://tuttishop.hu/tutti-juice/39-tutti-juice-tea.html',
                      context),


                ],
              )),
          Container(
              height: 200.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Poseidon()));
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
}