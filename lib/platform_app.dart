import 'package:universal_platform/universal_platform.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_app/cupertino/cupertino_home_page.dart';
import 'package:platform_app/material/material_home_page.dart';
import 'package:platform_app/screens/screen_one.dart';

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isIOS) {
      return CupertinoApp(
        home: CupertinoHomePage(),
        routes: {
          ScreenOne.id: (context) => ScreenOne(),
        },
      );
    }

    if (UniversalPlatform.isAndroid ||
        UniversalPlatform.isFuchsia ||
        UniversalPlatform.isWeb) {
      return MaterialApp(
        home: MaterialHomePage(),
        routes: {
          ScreenOne.id: (context) => ScreenOne(),
        },
      );
    }

    return MaterialApp(
      home: Center(
        child: Text('Unsupported Platform'),
      ),
    );
  }
}
