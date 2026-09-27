import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class Web extends StatefulWidget {
  const Web({super.key, required this.link});

  final String link;

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  late WebViewController _controller;
  @override
  void initState() {
    super.initState();
    WebViewController().loadRequest(Uri.parse(widget.link));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        splashColor: Colors.transparent,
        elevation: 0,
        child: Icon(Icons.cancel, color: Theme.of(context).indicatorColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
