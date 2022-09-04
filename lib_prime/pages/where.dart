import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Where extends StatefulWidget {
  @override
  _WhereState createState() => _WhereState();
}



class _WhereState extends State<Where> {
  late WebViewController controller;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
          SafeArea(
            child: WebView(
              initialUrl:
              'https://drinkprime.com/pages/where-to-buy',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                this.controller = controller;
              },
              onPageStarted: (url) {
                if (url.contains('https://drinkprime.com/pages/where-to-buy')) {
                  Future.delayed(const Duration(milliseconds: 500), () {
                    controller.evaluateJavascript("document.getElementsByClassName('shopify-section--footer')[0].style.display='none'");
                    controller.evaluateJavascript("document.getElementsByClassName('shopify-section--header')[0].style.display='none'");

                  });
                } 
              },
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
          isLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Stack(),
        ]
        ),
    );
  }
}
