import 'package:flutter/cupertino.dart';
import 'package:platform_app/config.dart';
import 'package:provider/provider.dart';
import 'package:platform_app/screens/screen_one.dart';

class CupertinoHomePage extends StatefulWidget {
  static const String id = 'cupertino_home_page';

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
              child: Text('Navigate To Screen One'),
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  ScreenOne.id,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
