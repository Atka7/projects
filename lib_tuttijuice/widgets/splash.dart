import 'package:flutter/material.dart';
import 'package:tuttijuice/helpers/appcolors.dart';
import 'package:tuttijuice/main.dart';

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
        backgroundColor: Color.fromARGB(255, 157, 210, 42),
        body: Container(
            color: AppColors.LIGHT_BLUE,
            child: Stack(children: [
              Positioned.fill(
                child: Container(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Image.asset(
                    'assets/launchscreen.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ])
        ));
  }
}
