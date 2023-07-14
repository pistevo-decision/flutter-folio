import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Dispatcher logHistory = Dispatcher("");

void log(String? value) {
  String v = value ?? "";
  logHistory.value = "$v\n${logHistory.value}";

  if (kDebugMode) {
    print(v);
  }
}

void logError(String? value) => log("[ERROR] ${value ?? ""}");

// Take from: https://flutter.dev/docs/testing/errors
void initLogger(VoidCallback runApp) {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);
      logError(details.stack.toString());
    };
    runApp.call();
  }, (Object error, StackTrace stack) {
    logError('${error.toString()} \nStack:\n${stack.toString()}\n-----------');
  });
}

class Dispatcher extends ValueNotifier<String> {
  Dispatcher(String value) : super(value);
}
