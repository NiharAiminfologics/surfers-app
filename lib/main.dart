import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:surfers/provider/app_provider.dart';
import 'package:surfers/surfer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  orientations();
  systemChrome();
  setUpData();
  runApp(SurferApp());
}

void orientations() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

void systemChrome() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}
