import 'package:flutter/cupertino.dart';
import 'package:platform_app/config.dart';
import 'package:provider/provider.dart';

class CupertinoHomePage extends StatefulWidget {
  CupertinoHomePage({Key key}) : super(key: key);
  @override
  _CupertinoHomePageState createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(context.watch<Config>().title),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CupertinoButton(
              child: Text('Press Me'),
              onPressed: () => {print('IOS pressed!')},
            ),
          ),
        ],
      ),
    );
  }
}
