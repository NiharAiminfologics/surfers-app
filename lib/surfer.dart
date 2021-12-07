import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surfers/utils/routes.dart';


class SurferApp extends StatefulWidget {
  const SurferApp({Key? key}) : super(key: key);

  @override
  _SurferAppState createState() => _SurferAppState();
}

class _SurferAppState extends State<SurferApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(375,812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RoutesGenerator.generateRoute,
      ),
    );
  }
}

