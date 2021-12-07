import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surfers/modals/app_modal.dart';
import 'package:surfers/provider/app_provider.dart';
import 'package:surfers/screens/storyScreen.dart';
import 'package:surfers/theme/app_text_style.dart';
import 'package:surfers/theme/app_theme.dart';
import 'package:surfers/utils/app_icons.dart';
import 'package:surfers/utils/global_constants.dart';

import '../widgets/storyWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random r = Random();
  final appData = locator<AppData>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 10.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  padding: EdgeInsets.only(left: 28.sp),
                  onPressed: null,
                  icon: AppIcon.drawer),
              Text(
                "Surfers",
                style: AppTextStyle.title,
              ),
              IconButton(
                  padding: EdgeInsets.only(right: 28.6.sp),
                  onPressed: null,
                  icon: AppIcon.search),
            ],
          ),
          SizedBox(height: 20.sp),
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(child: buildStoryList()),
                ];
              },
              body: buildProfileList(),
            ),
          )
        ],
      ),
    );
  }

  Container buildProfileList() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin:
                EdgeInsets.only(bottom: 37.sp, left: 29.1.sp, right: 29.1.sp),
            height: 235.5.sp,
            width: 316.78.sp,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage(appData.surfer![index].post[index].postImage)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.sp),
                  topRight: Radius.circular(143.sp),
                  bottomLeft: Radius.circular(15.sp),
                  bottomRight: Radius.circular(15.sp),
                )),
            child: Stack(
              children: [
                Positioned(
                    top: 41.sp,
                    child: Opacity(
                      opacity: 0.58.sp,
                      child: Container(
                        height: 194.5.sp,
                        width: 316.78.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            gradient: LinearGradient(
                                colors: [
                                  AppTheme.black70,
                                  AppTheme.black80,
                                  AppTheme.black10,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.center)),
                      ),
                    )),
                Positioned(
                  left: 16.4.sp,
                  top: 12.2.sp,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryScreen(
                                    surfers: appData.surfer![index]))),
                        child: StoryWidget(
                            height: 54.68.sp,
                            width: 54.68.sp,
                            image: appData
                                .surfer![index].stories[index].storyImage,
                            color: colorList[r.nextInt(colorList.length)],
                            rightMargin: 0),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                Navigator.of(context).pushNamed('profile'),
                            child: Text(
                              appData.surfer![index].userName.toUpperCase(),
                              style: AppTextStyle.name,
                            ),
                          ),
                          Text(
                            appData.surfer![0].post[index].lastSeen,
                            style: AppTextStyle.hours,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 32.4.sp,
                  top: 90.sp,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppIcon.heart,
                          SizedBox(width: 5.1.sp),
                          Text(
                            appData.surfer![0].post[index].likes,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.4.sp,top: 17.sp),
                        child: AppIcon.save,
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 19.4.sp,
                  bottom: 26.5.sp,
                  child: Row(
                    children: [
                      Container(
                        height: 39.sp,
                        width: 39.sp,
                        padding: EdgeInsets.only(left: 14.sp, right: 9.6.sp),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: AppIcon.click,
                      ),
                      SizedBox(width: 11.5.sp),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appData.surfer![0].post[index].userBio,
                            style: AppTextStyle.famous,
                          ),
                          SizedBox(height: 2.sp),
                          Text(
                            appData.surfer![0].post[index].location,
                            style: AppTextStyle.location,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildStoryList() {
    return Container(
      height: 54.68.sp,
      child: ListView.builder(
        itemCount: appData.surfer![0].stories.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 26.sp),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryScreen(
                          surfers: appData.surfer![index],
                        ))),
            child: StoryWidget(
                height: 54.68.sp,
                width: 54.68.sp,
                image: appData.surfer![index].stories[index].storyImage,
                color: colorList[r.nextInt(colorList.length)],
                rightMargin: 18.3.sp),
          );
        },
      ),
    );
  }
}
