import 'package:flutter/widgets.dart';
import 'package:platform_app/config.dart';
import 'package:platform_app/platform_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Config()),
      ],
      child: PlatformApp(),
    ),
  );
}
