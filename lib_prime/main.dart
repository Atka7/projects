import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prime/pages/drinkinfo.dart';
import 'package:prime/pages/vids.dart';
import 'package:prime/pages/webshop.dart';
import 'package:prime/pages/where.dart';
import 'helpers/appcolors.dart';
import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRIME',
      theme: ThemeData(
        fontFamily: 'Montserrat',
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
      appBar: AppBar(
        backgroundColor: AppColors.MAIN_COLOR,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Container(
          width: MediaQuery.of(context).size.width,
            height: 40.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/primetextlogo.png'),
                    fit: BoxFit.fitHeight))),
      ),
      body: TabBarView(
        children: <Widget>[
          Webshop(),
          Where(),
          //HirekPage(),
          Vids(),
          DrinkInfo(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: Container(
            color: Color.fromARGB(255, 147, 213, 1),
            child: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.store,
                    size: 25.0,
                  ),

                ),
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.mapMarkerAlt,
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
                    FontAwesomeIcons.twitter,
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
