// @dart=2.12

import 'dart:ui' as ui;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:stiletto/generated_plugin_registrant.dart';
import 'package:stiletto/main.dart' as entrypoint;

Future<void> main() async {
  registerPlugins(webPluginRegistrar);
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
