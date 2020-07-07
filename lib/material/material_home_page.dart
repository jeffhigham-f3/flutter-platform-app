import 'package:flutter/material.dart';
import 'package:platform_app/config.dart';
import 'package:provider/provider.dart';
import 'package:platform_app/screens/screen_one.dart';

class MaterialHomePage extends StatefulWidget {
  static const String id = 'material_home_page';

  MaterialHomePage({Key key}) : super(key: key);
  @override
  _MaterialHomePageState createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<MaterialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<Config>().title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: MaterialButton(
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
