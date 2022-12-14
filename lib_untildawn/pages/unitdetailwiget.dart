import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rauble/helpers/appcolors.dart';

class UnitDetailWidget extends StatefulWidget {
  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  @override
  UnitDetailWidgetState createState() => UnitDetailWidgetState();
}

class UnitDetailWidgetState extends State<UnitDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: 'Unidad: '),
            TextSpan(
                text: 'Libra', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: '(max 20)', style: TextStyle(fontSize: 12)),
          ])),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.amount < 20
                    ? () {
                        setState(() {
                          widget.amount++;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: Icon(
                  Icons.add_circle_outline,
                  size: 50,
                  color: AppColors.DJ,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: widget.amount.toString(),
                        style: TextStyle(fontSize: 40)),
                    TextSpan(text: '.lbs', style: TextStyle(fontSize: 20)),
                  ])),
                ),
              )),
              GestureDetector(
                onTap: widget.amount > 0
                    ? () {
                        setState(() {
                          widget.amount--;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: Icon(
                  Icons.remove_circle_outline,
                  size: 50,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Precio: '),
                TextSpan(
                    text: '\${widget.price}/ lb',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ])),
              Text(
                '\${widget.cost}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
