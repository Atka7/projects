import 'package:flutter/material.dart';
import 'package:rauble/helpers/appcolors.dart';
import 'package:rauble/helpers/iconhelper.dart';
import 'package:rauble/widgets/iconfont.dart';
import 'package:rauble/widgets/themebutton.dart';
import 'categorylistpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/imgs/welcome_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: Image.asset('assets/imgs/rauble.png')
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Rauble',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Find the right\nevent for you!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ThemeButton(
                      label: "Try it now!",
                      highlight: Colors.blueAccent[900],
                      color: AppColors.MAIN_COLOR,
                      onClick: () {}),
                  ThemeButton(
                      label: "Login",
                      labelColor: AppColors.MAIN_COLOR,
                      color: Colors.transparent,
                      highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                      borderColor: AppColors.MAIN_COLOR,
                      borderWidth: 4,
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryListPage()));
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
