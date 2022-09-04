import 'package:flutter/material.dart';
import 'package:nber_energydrink/kategoria/italok_page.dart';
import 'package:nber_energydrink/kategoria/ruhazat_page.dart';
import 'package:nber_energydrink/kategoria/osszes_page.dart';
import 'package:nber_energydrink/kategoria/termekek_page.dart';

class WebShopPage extends StatefulWidget {
  @override
  _WebShopPageState createState() => _WebShopPageState();
}

class _WebShopPageState extends State<WebShopPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Text('Kategoriák',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  color: Color.fromARGB(255, 157, 210, 42),
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
        SizedBox(height: 15.0),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color.fromARGB(255, 157, 210, 42),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Összes',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Italok',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Ruházat',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Termékek',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    OsszesPage(),
                    ItalokPage(),
                    RuhazatPage(),
                    TermekekPage(),
                  ]
              )
          )
        ],
      ),
    );
  }
}