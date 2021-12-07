import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surfers/modals/app_modal.dart';
import 'package:surfers/provider/app_provider.dart';
import 'package:surfers/theme/app_text_style.dart';
import 'package:surfers/utils/app_icons.dart';
import 'package:surfers/utils/global_constants.dart';
import 'package:surfers/widgets/storyWidget.dart';

class ProfileScreen extends StatelessWidget {


  Random r = Random();
  final appData = locator<AppData>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 388.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://media.istockphoto.com/photos/staying-active-keeps-the-spirit-young-picture-id960189720?b=1&k=20&m=960189720&s=170667a&w=0&h=EO1vl2bGZ9SojIUMNWlSfjio3LzWsBg-euH_IUhHuxI="))),
                ),
                Container(
                    height: 388.sp,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/image/mask.png',
                      fit: BoxFit.fitWidth,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 66.sp, left: 29.sp),
                      child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: AppIcon.arrowBack),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.5.sp, top: 40.6.sp),
                      child: AppIcon.blackHeart,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 34.5.sp, top: 24.8.sp),
                      child: AppIcon.saved,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 31.sp, top: 24.5.sp),
                        child: AppIcon.share),
                    Container(
                      height: 71.49.sp,
                      width: 71.49.sp,
                      margin: EdgeInsets.only(top: 45.3.sp, left: 28.sp),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/click.svg',
                          height: 31.59.sp,
                          width: 22.59.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28.sp),
                  child: StoryWidget(
                      height: 46.sp,
                      width: 46.sp,
                      image: appData.surfer![0].stories[3].storyImage,
                      color: colorList[r.nextInt(colorList.length)],
                      rightMargin: 0),
                ),
                SizedBox(
                  width: 14.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appData.surfer![0].userName.toUpperCase(),
                      style: AppTextStyle.name,
                    ),
                    Text(
                      appData.surfer![0].post[0].lastSeen,
                      style: AppTextStyle.hours,
                    )
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: 133.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.sp),
                  child: SvgPicture.asset(
                    'assets/icons/addPerson.svg',
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.sp, top: 25.5.sp),
              child: Text(
                appData.surfer![0].post[0].userBio,
                style: AppTextStyle.title2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.sp, top: 2.4.sp),
              child: Text(
                appData.surfer![0].post[0].date,
                style: AppTextStyle.date,
              ),
            ),
            Container(
              height: 170.sp,
              width: 318.sp,
              margin: EdgeInsets.only(left: 28.sp, right: 29.sp, top: 24.4.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.sp),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/colton.jpg",
                      ))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.sp, left: 24.sp, right: 23.sp),
              child: Text(
                articleText,
                style: AppTextStyle.longText,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }
}
