import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_app/cupertino/cupertino_home_page.dart';
import 'package:platform_app/material/material_home_page.dart';

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoHomePage(),
      );
    }

    if (Platform.isAndroid || Platform.isFuchsia) {
      return MaterialApp(
        home: MaterialHomePage(),
      );
    }

    return Center(
      child: Text('Unsupported Platform'),
    );
  }
}
