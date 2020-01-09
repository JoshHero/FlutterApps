import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';




class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}


class _BlogState extends State<Blog> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Blog',
        style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Image.asset('images/hilltop_online_radio.jpg',fit: BoxFit.contain, height: 44.0, width: 44.0, )
        ],
      ),
      body: Builder(
        builder: (BuildContext context){
          return WebView(
          initialUrl: 'https://www.medium.com/@sallpeach',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated:(WebViewController webViewController){
            _controller.complete(webViewController);
            webViewController.evaluateJavascript("document.getElementByClassName('header')[0].style.display='none';");
          }
          

          );
        }
      ),
    );
  }
}