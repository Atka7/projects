import 'package:efott/helpers/appcolors.dart';
import 'package:efott/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EFOTT',
      theme: ThemeData(
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.DARKER_BLUE,
        iconTheme: const IconThemeData(
          color: AppColors.DARK_TEXT,
          size: 25.0,
        ),
        centerTitle: true,
        title: const Text('EFOTT',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.DARK_TEXT,
                fontWeight: FontWeight.w900,
                fontSize: 25.0)),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    Icons.favorite,
                ),
              )
          ),
        ],
      ),
    );
  }
}
