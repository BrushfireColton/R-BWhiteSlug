import 'dart:io';

import 'package:client/src/ui/core/vendor_checker_thingy_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  await dotenv.load();

  if (Platform.isWindows) {
    await windowManager.ensureInitialized();
    const windowsOptions = WindowOptions(
      size: Size(600, 900),
      center: true,
    );

    windowManager.waitUntilReadyToShow(windowsOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(VendorCheckerThingyApp());
}
