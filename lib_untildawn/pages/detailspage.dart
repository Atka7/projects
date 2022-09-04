import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rauble/helpers/appcolors.dart';
import 'package:rauble/pages/unitdetailwiget.dart';
import 'package:rauble/models/subcategory.dart';
import 'package:rauble/widgets/categoryicon.dart';
import 'package:rauble/widgets/categorypartslist.dart';
import 'package:rauble/widgets/mainappbar.dart';
import 'package:rauble/widgets/themebutton.dart';

class DetailsPage extends StatefulWidget {
  int amount = 0;
  double price = 15.0;
  double cost = 0.0;
  SubCategory? subCategory;

  DetailsPage({this.subCategory});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/' +
                                widget.subCategory!.imgName! +
                                '_desc.png'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned.fill(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent
                        ])),
                  )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryIcon(
                              color: widget.subCategory!.color!,
                              iconName: widget.subCategory!.icon!,
                              size: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Carne de cerdo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: widget.subCategory!.color,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    '\$50.00 / lb',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      right: 20,
                      top: 100,
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: AppColors.MAIN_COLOR,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Row(
                          children: [
                            Text(
                              '3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      )),
                  MainAppBar(
                    themeColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CategoryPartsList(subCategory: widget.subCategory),
                  UnitDetailWidget(),
                  ThemeButton(
                      label: "Térkép",
                      icon: Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      onClick: () {}),
                  ThemeButton(
                      label: "Jegyek hamarosan...",
                      icon: Icon(
                        Icons.airplane_ticket,
                        color: AppColors.MAIN_COLOR,
                      ),
                      highlight: AppColors.MAIN_COLOR,
                      color: AppColors.MAIN_COLOR,
                      onClick: () {})
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
