import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Poseidon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 210, 42),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Poseidon Originals Apps',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
                            child: CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 43, 95, 171),
                              backgroundImage: new AssetImage('assets/poseidon.png'),
                              radius: 120.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50.0, right: 50.0),
                            child: Text(
                              'A Poseidon Originals Apps-nál eltérően gondolkozunk mint más IT cégek. Mindig az ügyfelet tartjuk szem előtt, hiszünk abban, hogy igazán jó minőségű munkát akkor tudunk kiadni a kezünkből, ha szeretjük is amit csinálunk. Célunk, hogy minőségi munkát adjunk ki és minden ügyfél elégedett legyen. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                            child: Text(
                              'Ezt az alkalmazást az NBER Energydrink és a LEET csapatával együttműködésben készítettük Neked.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 50.0),
                            child: Text(
                              'Ha érdekel kik vagyunk és hogyan tudnál velünk kapcsolatba lépni vagy érdekelnek az alkotásaink, bővebben információt itt találsz:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Center(
                              child: Container(
                                  width: MediaQuery.of(context).size.width - 150.0,
                                  height: 50.0,
                                  child: new ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 157, 210, 42),),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                            )
                                        )
                                    ),
                                    onPressed: () { launch('https://www.instagram.com/poseidonoriginals/');
                                    },
                                    child: new Text(
                                      'Kapcsolat',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Colors.white),
                                    ),
                                  ))),
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
                    ),
                  ],
                )
              ]))),
    );
  }
}
