import 'package:efott/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vector_math/vector_math.dart' as v_math;

class Tickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.DARKER_BLUE,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.DARK_TEXT),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('JEGYEK',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: AppColors.DARK_TEXT)),
        actions: <Widget>[],
      ),
      body: ListView(
          padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
          children: [
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 15.0),
              child: const Text('BÉRLETEK',
              style: TextStyle(
                  color: AppColors.TICKETS_TEXT,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
        ),
            ClipPath(
              clipper: DolDurmaClipper(right: 60, holeRadius: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: AppColors.TICKET1,
                ),
                height: 95,
                padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/tickets/ticket-logo.png',
                        height: 85.0,
                        fit: BoxFit.fitHeight),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('HETIJEGY / WEEKLY PASS',
                              style: TextStyle(
                                color: AppColors.TICKETS_TEXT,
                              )),
                          Text('32 900 Ft',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: AppColors.TICKETS_TEXT,
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(FontAwesomeIcons.play,
                        color: AppColors.MAIN,
                        size: 40.0,),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            ClipPath(
              clipper: DolDurmaClipper(right: 60, holeRadius: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: AppColors.TICKET2,
                ),
                height: 95,
                padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/tickets/ticket-logo(1).png',
                        height: 85.0,
                        fit: BoxFit.fitHeight),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('3 NAPOS HÉTVÉGI JEGY/\n3 DAY WEEKEND PASS',
                              style: TextStyle(
                                color: AppColors.TICKETS_TEXT,
                              )),
                          Text('29 900 Ft',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: AppColors.TICKETS_TEXT,
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(FontAwesomeIcons.play,
                        color: AppColors.MAIN,
                        size: 40.0,),
                    ),
                  ],
                ),
              ),
            ),

          ]),
    );
  }
}
class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}