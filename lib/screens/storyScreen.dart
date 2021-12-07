import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:surfers/provider/app_provider.dart';
import 'package:surfers/modals/app_modal.dart';
import 'package:surfers/theme/app_text_style.dart';
import 'package:surfers/theme/app_theme.dart';
import 'package:surfers/utils/app_icons.dart';
import 'package:surfers/utils/global_constants.dart';
import 'package:surfers/widgets/storyWidget.dart';

class StoryScreen extends StatefulWidget {
  Surfers surfers;

  StoryScreen({required this.surfers});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  Random r = Random();

  final appData = locator<AppData>();
  late PageController controller;
  int selectedIndex = 0;
  var arrowIndex;


  void onNextPage(int index) {
    controller.animateToPage(index,
        duration: Duration(microseconds: 200), curve: Curves.ease);
  }

  void onPreviousPage(int index) {
    controller.previousPage(
        duration: Duration(microseconds: 200), curve: Curves.ease);
  }

  @override
  void initState() {
    arrowIndex = widget.surfers.id;
    controller = PageController(initialPage: arrowIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: storyList.length,
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
                arrowIndex = selectedIndex;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            widget.surfers.stories[index].storyImage))),
              );
            },
          ),
          Positioned(
            top: -150.sp,
            child: Opacity(
              opacity: 0.30.sp,
              child: Container(
                height: 406.5.sp,
                width: 396.78.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppTheme.black70,
                    AppTheme.black90,
                    AppTheme.black10,
                  ], begin: Alignment.center, end: Alignment.bottomCenter),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -60.sp,
            child: Container(
              height: 406.5.sp,
              width: 396.78.sp,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppTheme.black10,
                  AppTheme.black90,
                  AppTheme.black70,
                ], begin: Alignment.center, end: Alignment.bottomCenter),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 43.sp),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: AppIcon.arrow),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 62.sp, right: 29.sp),
                      child: IconButton(onPressed: null, icon: AppIcon.circle),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.sp),
                  child: Text(
                    appData.surfer![arrowIndex].userName,
                    style: AppTextStyle.userName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.sp, right: 53.sp),
                  child: Text(
                    widget.surfers.post[arrowIndex].userBio,
                    style: AppTextStyle.info,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 30.4.sp,
                            ),
                            child: SimpleShadow(
                              color: Colors.black,
                              offset: Offset(0.sp, 1.sp),
                              opacity: 0.47.sp,
                              sigma: 2.sp,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    // onTapArrow(index);
                                    onPreviousPage(arrowIndex);
                                  });
                                },
                                icon: AppIcon.leftArrow,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                              right: 31.2.sp,
                            ),
                            child: SimpleShadow(
                              color: Colors.black,
                              offset: Offset(0.sp, 1.sp),
                              opacity: 0.47.sp,
                              sigma: 2.sp,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    // onTapArrow(index);
                                    onNextPage(arrowIndex + 1);
                                  });
                                },
                                icon: AppIcon.rightArrow,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500.sp),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.sp, sigmaY: 4.sp),
                      child: Container(
                              height: 46.sp,
                              width: 232.sp,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2.sp),
                              ),
                              child: Center(
                                  child: Text(
                                "FOLLOW",
                                style: AppTextStyle.follow,
                              )),
                            ),
                    ),
                  ),
                ),
                Container(
                  height: 46.sp,
                  margin: EdgeInsets.only(bottom: 44.sp, top: 31.sp),
                  child: ListView.builder(
                    itemCount: appData.surfer![0].stories.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 30.sp,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => onNextPage(index),
                        child: StoryWidget(
                            height: 46.sp,
                            width: 46.sp,
                            image: appData
                                .surfer![index].stories[index].storyImage,
                            color: colorList[r.nextInt(colorList.length)],
                            rightMargin: 16.sp),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
