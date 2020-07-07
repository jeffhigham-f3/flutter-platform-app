import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'screen_one';
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return scaffold();
  }
}

scaffold() {
  final String page_name = "Screen One";

  if (UniversalPlatform.isIOS) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(page_name),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(page_name),
          ),
        ],
      ),
    );
  } else {
    return Scaffold(
      appBar: AppBar(
        title: Text(page_name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(page_name),
          ),
        ],
      ),
    );
  }
}
