import 'package:darius_calugar/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  setUrlStrategy(PathUrlStrategy());
  runApp(const App());
}
