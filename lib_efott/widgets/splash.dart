import 'package:efott/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:efott/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.DARKER_BLUE,
        body: Container(
            color: AppColors.DARKER_BLUE,
            child: Stack(children: [
              Positioned.fill(
                child: Container(
                  padding: EdgeInsets.only(left: 100.0, right: 100.0),
                  child: Image.asset(
                    'assets/efott.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ])
        ));
  }
}
