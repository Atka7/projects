import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tuttijuice/oldalak/Italinfok.dart';
import 'package:tuttijuice/oldalak/Terkep.dart';
import 'package:tuttijuice/oldalak/Videok.dart';
import 'package:tuttijuice/oldalak/Webshop.dart';
import 'widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Color.fromARGB(255, 37, 125, 225),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Webshop(),
          Terkep(),
          //HirekPage(),
          Videok(),
          Italinfok(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: Container(
            color: Color.fromARGB(255, 37, 125, 225),
            child: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 1, 22, 137),
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.store,
                    size: 25.0,
                  ),

                ),
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.map,
                    size: 25.0,
                  ),
                ),
                //Tab(
                //  icon: Icon(
                //    FontAwesomeIcons.newspaper,
                //    size: 30.0,
                //  ),
                //),
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.tv,
                    size: 25.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.glassWhiskey,
                    size: 25.0,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
