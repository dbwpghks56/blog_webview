import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final requestUri = Uri.parse("https://blog.codefactory.ai");

class HomeScreen extends StatelessWidget {
  WebViewController viewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(requestUri);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Code Factory"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                viewController.loadRequest(requestUri);
              },
              icon: const Icon(
                Icons.home
              )
          )
        ],
      ),
      body: WebViewWidget(
        controller: viewController,
        
      ),
    );
  }
}
