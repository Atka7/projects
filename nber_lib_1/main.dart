import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WebShopPage.dart';
import 'package:nber_energydrink/StreamekPage.dart';
import 'package:nber_energydrink/ItalokPage.dart';
import 'BoltokPage.dart';

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
        primaryColor: Color.fromARGB(255, 157, 210, 42),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: AnimatedSplashScreen(
      duration: 3000,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Color.fromARGB(255, 157, 210, 42),
        nextScreen: MyHomePage(),
          splash:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('launchimage.png'),
                            fit: BoxFit.contain))),
              ],
            ),
          )
      ),
      //Center(
      //  child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          //children: [
            //Container(
              //height: 100,
              //width: 100,
              //color: Colors.blue,
            //),
            //Container(
              //child: Text(
                //'Splash Screen',
                //style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
             // ),
           // )
         // ],
       // ),
    //  ),

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
          WebShopPage(),
          BoltokPage(),
          StreamekPage(),
          ItalokPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: Container(
            color: Color.fromARGB(255, 157, 210, 42),
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.public,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.tv,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.local_drink,
                    size: 30.0,
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