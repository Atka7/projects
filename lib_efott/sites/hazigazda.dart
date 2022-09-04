import 'package:efott/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hazigazda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.DARKER_BLUE,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.DARK_TEXT),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('HÁZIGAZDA: MATE',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: AppColors.DARK_TEXT)),
        actions: <Widget>[],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Image.asset('assetPath',
                height: 400.0, width: 400.0, fit: BoxFit.fitWidth),
        Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child:  Text('Az Egyetemisták és Főiskolások Országos Turisztikai Találkozójának (EFOTT) idei házigazdája a Magyar Agrár- és Élettudományi Egyetem (MATE) – jelentették be az Educatio Oktatási Szakkiállítás megnyitóján. Az agrárfókuszú intézmény profiljában központi szerepet kap a fenntartható jövő biztosítása, így a koncertek és a szórakozás mellett ehhez illeszkedő témákkal és praktikus tippekkel ismerkedhetnek majd a fesztiválozók 2022. július 13-17. között velencei-tónál.',
              style: TextStyle(
                  color: AppColors.HAZIGAZDA_TEXT,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        Container(
          padding: EdgeInsets.all(30.0),
              child: Text('„Az egyetemisták egyik legfőbb találkozási pontjaként ismert EFOTT kiváló lehetőséget jelent ahhoz, hogy interaktív, szórakoztató formában mutassuk be a fiataloknak a mezőgazdaság, a környezetvédelem és a fenntarthatóság aktuális kérdéseit és azokat a hasznos ötleteket, melyekkel a lehető legegyszerűbben csökkenthetjük ökológiai lábnyomunkat a hétköznapokban. Emellett a szórakozás és a strandolás mellett értékes időtöltést biztosítanak majd sport- és kulturális programjaink, sőt a civil téren is fontos kérdésekkel ismerkedhetnek a fesztiválozók” – mondta Dr. Gyuricza Csaba, a MATE rektora az Educatio Szakkiállítás nyitónapján.',
              style: TextStyle(
                  color: AppColors.HAZIGAZDA_TEXT,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0)),
        ),
        Image.asset('assets/hazigazda1.jpg',
            height: 400.0, width: 400.0, fit: BoxFit.fitWidth),

      ]),
    );
  }
}
