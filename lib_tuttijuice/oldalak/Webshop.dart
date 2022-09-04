import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuttijuice/oldalak/webshopkategoria/italok.dart';
import 'package:tuttijuice/oldalak/webshopkategoria/merch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tuttijuice/widgets/options.dart';
import 'package:tuttijuice/oldalak/webshopkategoria/osszes.dart';

class Webshop extends StatefulWidget {
  @override
  _WebshopState createState() => _WebshopState();
}

class _WebshopState extends State<Webshop>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  company() async {
    if (await canLaunch("https://www.instagram.com/poseidon.studios/")) {
      await launch("https://www.instagram.com/poseidon.studios/");
    } else {
      throw 'Nem sikerült kapcsolódni a szerverekhez.';
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 125, 225),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.white,
          isScrollable: true,
          unselectedLabelColor: Color.fromARGB(255, 1, 22, 137),
          tabs: [
            Tab(
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Összes',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 21.0,
                      )),
                ),
              ),
            ),
            Tab(
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Tutti Juice',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 21.0,
                      )),
                ),
              ),
            ),
            Tab(
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Tutti Juice Merch',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 21.0,
                      )),
                ),
              ),
            ),

          ],
        ),
        title: Text('Tutti Shop',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
      ),
      body: TabBarView(controller: _tabController, children: [
        OsszesPage(),
        ItalokPage(),
        MerchPage(),
      ]),
    );
  }
}
