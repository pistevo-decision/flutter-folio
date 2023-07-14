import 'dart:io';

import 'package:flutter_folio/_utils/logger.dart';

class FileUtils {
  Future<String?> readAsString(String path) async {
    try {
      return await File(path).readAsString();
    } catch (e) {
      log("$e");
    }
    return null;
  }

  Future<void> writeAsString(String path, String contents) async {
    try {
      await File(path).writeAsString(contents, flush: true);
    } catch (e) {
      log("$e");
    }
    return;
  }
}
