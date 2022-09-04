import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prime/helpers/appcolors.dart';
import 'package:prime/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Drinkinfos extends StatelessWidget {
  final assetPath, name, detail1, detail2, detail3, detail4;

  Drinkinfos(
      {this.assetPath, this.name, this.detail1, this.detail2, this.detail3, this.detail4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.MAIN_COLOR,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white)),
        actions: const <Widget>[],
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 450.0, width: 450.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
        Center(
          child:  Text(name,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0)),
        ),
        const SizedBox(height: 20.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.checkCircle,
              size: 40,
              color: AppColors.MAIN_COLOR,
            ),
            Text(
              detail1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.checkCircle,
              size: 40,
              color: AppColors.MAIN_COLOR,
            ),
            Text(
              detail2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.checkCircle,
              size: 40,
              color: AppColors.MAIN_COLOR,
            ),
            Text(
              detail3,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.checkCircle,
              size: 40,
              color: AppColors.MAIN_COLOR,
            ),
            Text(
              detail4,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        const SizedBox(height: 50.0,),
        SizedBox(
            height: 200.0,
            child: GestureDetector(
              onTap: () {Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp()));},
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
