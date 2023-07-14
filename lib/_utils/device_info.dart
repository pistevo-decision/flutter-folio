import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;

enum FormFactorType { monitor, smallPhone, largePhone, tablet }

class DeviceOS {
  // Higher level device class abstractions (more syntax sugar for the views)
  static bool isWeb = kIsWeb;
  static bool get isDesktop => Platform.isWindows || Platform.isMacOS || Platform.isLinux;
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;
  static bool get isDesktopOrWeb => isDesktop || isWeb;
  static bool get isMobileOrWeb => isMobile || isWeb;
  static bool get isWindows => Platform.isWindows;
  static bool get isMacOS => Platform.isMacOS;
  static bool get isLinux => Platform.isLinux;
  static bool get isAndroid => Platform.isAndroid;
  static bool get isIOS => Platform.isIOS;
}

class DeviceScreen {
  // Get the device form factor as best we can.
  // Otherwise we will use the screen size to determine which class we fall into.
  static FormFactorType get(BuildContext context) {
    double shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide <= 300) return FormFactorType.smallPhone;
    if (shortestSide <= 600) return FormFactorType.largePhone;
    if (shortestSide <= 900) return FormFactorType.tablet;
    return FormFactorType.monitor;
  }

  // Shortcuts for various mobile device types
  static bool isPhone(BuildContext context) => isSmallPhone(context) || isLargePhone(context);
  static bool isTablet(BuildContext context) => get(context) == FormFactorType.tablet;
  static bool isMonitor(BuildContext context) => get(context) == FormFactorType.monitor;
  static bool isSmallPhone(BuildContext context) => get(context) == FormFactorType.smallPhone;
  static bool isLargePhone(BuildContext context) => get(context) == FormFactorType.largePhone;
}
