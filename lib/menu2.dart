import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Menu2 extends StatelessWidget {
  final controllerWebView = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://moca.unimma.ac.id/'));

  Menu2({super.key});

  // const Menu2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Menu 2'),
        backgroundColor: Colors.blue,
      ),
      body: WebViewWidget(controller: controllerWebView),
    );
  }
}
