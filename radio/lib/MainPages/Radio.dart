import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';




class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}


class _RadioPageState extends State<RadioPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Radio',
        style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Image.asset('images/hilltop_online_radio.jpg',fit: BoxFit.contain, height: 44.0, width: 44.0, )
        ],
      ),
      body: Builder(
        builder: (BuildContext context){
          return WebView(
          initialUrl: 'https://hilltopvision.ml/radio',
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