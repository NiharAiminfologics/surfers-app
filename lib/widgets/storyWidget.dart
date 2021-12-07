import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryWidget extends StatefulWidget {
  String image;
  Color color;
  double rightMargin;
  double? width;
  double? height;

  StoryWidget(
      {required this.image,
      required this.color,
      required this.rightMargin,
      this.width,
      this.height});

  @override
  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      margin: EdgeInsets.only(right: widget.rightMargin.sp),
      padding: EdgeInsets.all(2.sp),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: widget.color, width: 2),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.image)),
        ),
      ),
    );
  }
}
