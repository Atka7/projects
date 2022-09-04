import 'package:flutter/material.dart';
import 'package:rauble/helpers/appcolors.dart';

class ThemeButton extends StatelessWidget {
  String? label;
  Function? onClick;
  Color? color;
  Color? highlight;
  Widget? icon;
  Color? borderColor;
  Color? labelColor;
  double? borderWidth;

  ThemeButton(
      {this.label,
      this.labelColor = Colors.white,
      this.color = AppColors.MAIN_COLOR,
      this.highlight = AppColors.MAIN_COLOR,
      this.icon,
      this.borderColor = Colors.transparent,
      this.borderWidth = 4,
      @required this.onClick});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: this.color,
          child: InkWell(
            splashColor: this.highlight,
            highlightColor: this.highlight,
            onTap: () {
              this.onClick!();
            },
            child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    border: Border.all(
                      color: AppColors.MAIN_COLOR,
                      width: 4,
                    )),
                child: this.icon == null
                    ? Text(
                        this.label!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: this.labelColor,
                            fontWeight: FontWeight.bold),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          this.icon!,
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            this.label!,
                            style: TextStyle(
                                fontSize: 16,
                                color: this.labelColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
          ),
        ),
      ),
    );
  }
}
