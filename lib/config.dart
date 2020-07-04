import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class Config with ChangeNotifier {
  String get title {
    if (UniversalPlatform.isIOS) {
      return "IOS App";
    }

    if (UniversalPlatform.isAndroid || UniversalPlatform.isFuchsia) {
      return "Android App";
    }

    if (UniversalPlatform.isWeb) {
      return "Web App";
    }

    return "Unknown App";
  }

  notifyListeners();
}
