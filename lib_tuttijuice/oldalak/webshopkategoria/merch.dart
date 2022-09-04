import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuttijuice/oldalak/options/Poseidon.dart';
import 'package:tuttijuice/widgets/termekszinek.dart';

class MerchPage extends StatelessWidget {
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
                      'FÉMSZÍVÓSZÁL',
                      'Merch',
                      '2 500 Ft',
                      'assets/merch1.jpg',
                      'Tutti Juice logós, gravírozott, környezetbarát, hajlított fémszívószál + takarító kefe. \nLegjobb választás egy finom Tutti Juice mellé!',
                      'https://tuttishop.hu/kezdolap/22-femszivoszal-4-db-gravirozott.html',
                      context),
                  termekkek(
                      'TUTTI TORNAZSÁK',
                      'Merch',
                      '799 Ft',
                      'assets/merch2.jpg',
                      'Tutti Juice világoskék tornazsák a már megszokott cool gyümölcs mintával és Tutti Juice logóval! \nEgy fiatalos és menő tornazsák amely feldobja a szürke hétköznapokat miközben hátizsákként is funkcionálhat.',
                      'https://tuttishop.hu/kezdolap/22-femszivoszal-4-db-gravirozott.html',
                      context),
                  termekkek(
                      'TUTTI JUICE MASZK',
                      'Merch',
                      '1 999 Ft',
                      'assets/merch3.jpg',
                      'Tutti Juice mintás szájmaszk, 2 különböző méretben!',
                      'https://tuttishop.hu/kezdolap/28-45-tutti-juice-maszk.html#/2-meret-felnott',
                      context),
                  termekkek(
                      'TUTTI JUICE BASEBALL SAPKA',
                      'Merch',
                      '1 299 Ft',
                      'assets/merch4.jpg',
                      'Viseld büszkén, hogy TE IS Tutti Juice fogyasztó vagy ezzel az egyedi mintával hímzett baseball sapkával.',
                      'https://tuttishop.hu/tutti-juice-merch/30-tutti-juice-baseball-sapka.html',
                      context),
                  termekkek(
                      'TUTTI JUICE VÁSZONTÁSKA',
                      'Merch',
                      '1 199 Ft',
                      'assets/merch5.jpg',
                      'Gondolj a környezetre és felejtsd el a műanyagszatyrokat. Vidd mindenhová magaddal a szuper megjelenésű, strapabíró Tutti Juice pamutvászontáskát!',
                      'https://tuttishop.hu/tutti-juice-merch/32-tutti-juice-vaszontaska.html',
                      context),
                  termekkek(
                      'TUTTI JUICE PÓLÓ',
                      'Merch',
                      '2 499 Ft',
                      'assets/merch6.jpg',
                      'Ha Tutti Juice rajongó vagy akkor szinte kötelező darab ez a pamut póló!',
                      'https://tuttishop.hu/kezdolap/33-53-tutti-juice-polo.html#/32-polomeret-felnott_s',
                      context),
                  termektea(
                      'TUTTI JUICE TEA KARKÖTŐ',
                      'Merch',
                      '199 Ft',
                      'assets/merch7.jpg',
                      'Extrém vagány, egyedi Tutti Juice TEA mintás, narancssárga szilikon karkötő.',
                      'https://tuttishop.hu/kezdolap/38-tutti-juice-tea-karkoeto.html',
                      context),
                  termektea(
                      'TUTTI JUICE TEA PALACK',
                      'Merch',
                      '2 500 Ft',
                      'assets/merch8.jpg',
                      'Ez az egyedi Tutti Juice TEA mintás visszazárható sportpalack tökéletes társad lesz! Vidd magaddal akárhova, teli Tutti Juice TEÁ-val!',
                      'https://tuttishop.hu/kezdolap/40-tutti-juice-tea-palack.html',
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