import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:surfers/theme/app_text_style.dart';

import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 70.sp,right: 70.sp),
            child: SizedBox(
              height: 200.sp,
              width: 200.sp,
              child: Lottie.asset('assets/lotties/surfing.json',
                  controller: _controller,
                  animate: true,
                  height: MediaQuery.of(context).size.height, onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward().whenComplete(() => Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => HomeScreen())));
              }),
            ),
          ),
          SizedBox(height: 50.sp),
          Center(child: Text("Surfing",style: AppTextStyle.surfing,))
        ],
      ),
    );
  }
}
