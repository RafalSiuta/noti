import 'dart:async';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class Web extends StatefulWidget {
  const Web({Key? key, required this.link}) : super(key: key);

  final String link;

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();
  late WebViewController _controller;
  @override
  void initState() {
    super.initState();
    WebViewController()
      ..loadRequest(
        Uri.parse(widget.link),
      );
   // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
          controller: _controller
      ),

      // WebView(
      //   javascriptMode: JavascriptMode.unrestricted,
      //   onWebViewCreated: (WebViewController webViewController) {
      //     _controller.complete(webViewController);
      //   },
      //   onWebResourceError: (e) {
      //     Navigator.pop(context);
      //   },
      //   initialUrl: widget.link,
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        splashColor: Colors.transparent,
        elevation: 0,
        child: Icon(
          Icons.cancel,
          color: Theme.of(context).indicatorColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
