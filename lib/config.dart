import 'dart:io' show Platform;

import 'package:flutter/material.dart';

class Config with ChangeNotifier {
  final String title = Platform.isIOS ? "IOS App" : "Android App";
  notifyListeners();
}
