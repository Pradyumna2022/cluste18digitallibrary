import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDetailsPage extends StatefulWidget {
  final String url;
  const WebViewDetailsPage({super.key, required this.url});

  @override
  State<WebViewDetailsPage> createState() => _WebViewDetailsPageState();
}

class _WebViewDetailsPageState extends State<WebViewDetailsPage> {
  final controller = WebViewController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
