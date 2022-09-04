import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:tuttijuice/widgets/options.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


class Terkep extends StatefulWidget {
  @override
  _TerkepState createState() => _TerkepState();
}

class _TerkepState extends State<Terkep> {
  late WebViewController controller;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 37, 125, 225),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text('Hol kapható',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
        ),
        body: Stack(children: <Widget>[
          SafeArea(
            child: WebView(
              initialUrl:
              'https://tuttijuice.hu/#hol-kaphato',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                this.controller = controller;
              },
              onPageStarted: (url) {
                if (url.contains('https://tuttijuice.hu/#hol-kaphato')) {
                  Future.delayed(Duration(milliseconds: 1000), () {
                    controller.evaluateJavascript("document.getElementsByClassName('vc-row-container')[0].style.display='none'");
                    controller.evaluateJavascript("document.getElementById('storepoint-container')[0].style.display='inline'");

                  });
                }
              },
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),

          isLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Stack(),
        ]),
      floatingActionButton: SpeedDial(
          icon: FontAwesomeIcons.exchangeAlt,
          backgroundColor: Color.fromARGB(255, 37, 125, 225),
          children: [
            SpeedDialChild(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/terkepjuice.png'),
              ),
              label: 'JUICE',
              backgroundColor: Color.fromARGB(255, 37, 125, 225),
              onTap: () {

              },
            ),
            SpeedDialChild(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/terkeptea.png'),
              ),
              label: 'TEA',
              backgroundColor: Color.fromARGB(255, 255, 96, 48),
              onTap: () {
                controller.loadUrl('https://www.google.com/maps/d/u/0/viewer?mid=1GLgh91tejHyLE67wZb0AlpoWov-C7RbS&ll=47.35805642810594%2C19.61275894999999&z=8');

              },
            ),
          ]),
    );

  }

}

