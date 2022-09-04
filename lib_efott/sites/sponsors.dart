import 'package:efott/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sponsors extends StatelessWidget {
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
        title: const Text('TÁMOGATÓK',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: AppColors.DARK_TEXT)),
        actions: <Widget>[],
      ),
      body: const SingleChildScrollView(
          child: Center(

          )),
    );
  }
}
