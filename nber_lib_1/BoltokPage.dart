import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BoltokPage extends StatefulWidget {
  @override
  _BoltokPageState createState() => _BoltokPageState();
}

const String flutterUrl = "https://flutter.dev/";
const String wikiUrl = "https://es.wikipedia.org";

class _BoltokPageState extends State<BoltokPage> {
  late WebViewController _controller;
  _back() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    }
  }
  _forward() async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    }
  }
  _loadPage() async {
    var url = await _controller.currentUrl();
    _controller.loadUrl(
      url == "https://flutter.dev/"
          ? 'https://es.wikipedia.org'
          : "https://flutter.dev/",
    );
    print(url);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
        actions: <Widget>[
          IconButton(
            onPressed: _back,
            icon: Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: _forward,
            icon: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadPage,
        child: Icon(Icons.refresh),
      ),
      body: SafeArea(
        child: WebView(
          key: Key("webview"),
          initialUrl: flutterUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
        ),
      ),
    );
  }
}
