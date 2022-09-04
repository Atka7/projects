import 'package:flutter/material.dart';
import 'package:rauble/helpers/appcolors.dart';
import 'package:rauble/helpers/iconhelper.dart';
import 'package:rauble/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        child: Center(
          child: IconFont(
            color: Colors.white,
            iconName: IconFontHelper.LOGO,
            size: 200,
          ),
        ),
      ),
    );
  }
}
