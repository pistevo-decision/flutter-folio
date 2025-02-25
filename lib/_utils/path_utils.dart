import 'dart:io';

import 'package:flutter_folio/_utils/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xdg_directories/xdg_directories.dart' as xdg_directories;

class PathUtil {
  static Future<String?> get dataPath async {
    String? result;
    if (Platform.isLinux) {
      result = "${xdg_directories.dataHome.path}/flutterfolio";
    } else {
      try {
        return (await getApplicationSupportDirectory()).path;
      } catch (e) {
        log("$e");
      }
    }
    return result;
  }

  static Future<String> get homePath async {
    return "~/";
  }
}
