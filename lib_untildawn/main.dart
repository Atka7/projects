import 'package:flutter/material.dart';
import 'helpers/iconhelper.dart';
import 'pages/splashpage.dart';
import 'widgets/iconfont.dart';
import 'helpers/appcolors.dart';
import 'pages/welcomepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'LexendDeca',),
    debugShowCheckedModeBanner: false,
    home: SplashPage(
      duration: 3,
      goToPage: WelcomePage(),
    ),
  ));
}

