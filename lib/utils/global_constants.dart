import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surfers/theme/app_theme.dart';

import 'app_images.dart';

List<Color> colorList = [
  AppTheme.skyBlue,
  AppTheme.purple,
  AppTheme.pink,
  AppTheme.violet
];

List storyList = [
  'assets/image/profile.jpg',
  'assets/image/zeon.jpg',
  'assets/image/zeon1.jpg',
  'assets/image/zeon2.jpg',
  'assets/image/zeon3.jpg',
  'assets/image/zeon4.jpg',
];

List storyUrl = [
  "https://images.pexels.com/photos/1122413/pexels-photo-1122413.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.pexels.com/photos/4628295/pexels-photo-4628295.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.unsplash.com/photo-1602474410494-80ebd435882d?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8NzczMDY3fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.pexels.com/photos/1654489/pexels-photo-1654489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.unsplash.com/photo-1621687947214-9887c01d8f2a?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NzMwNjd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
];

List profileList = [
  'assets/image/scott.png',
  'assets/image/emma.png',
  'assets/image/james.png',
  'assets/image/motoki.jpg',
  'assets/image/jess.jpg',
  'assets/image/gantas.jpg',
];

//postScreen
List editProfile = [
  'assets/image/profile.png',
  'assets/image/smith.png',
  'assets/image/bold.png',
  'assets/image/motoki.jpg',
  'assets/image/jess.jpg',
  'assets/image/gantas.jpg',
];

List articleImage = [
  'assets/image/austin.png',
  'assets/image/colton.png',
  'assets/image/gantas.png',
  'assets/image/motoki.png',
  'assets/image/wallpaper.png',
  'assets/image/wallpaper.png',
];

List<String> names = [
  "Tim Barney",
  "Ted Mark",
  "Gunther Perk",
  "Ross Geller",
  "Chandler Bing",
  "Joseph Tribbiani",
];

List hours = [
  "4 HOURS AGO",
  "3 HOURS AGO",
  "7 HOURS AGO",
  "8 HOURS AGO",
  "4 HOURS AGO",
  "1 HOURS AGO",
];

List likes = ["1.2K", "225", "7K", "1.2K", "225", "7K"];

List forFamous = [
  "Probably considered the \nforefather of pro surfing.",
  "One of the most inspirational \npeople in the public eye.",
  "This song should be called \nthe song of memories.",
  "Never drive away from \ngood surf.",
  "Surfing's one of the \nfew sports that you look \nahead to see what's behind.",
  "I'm just a surfer who \nwanted to build something \nthat allow me to surf."
];

List location = [
  "LONDON, UNITED KINGDOM",
  "BERLIN, GERMANY",
  "TOKYO,JAPAN",
  "NEW YORK, USA",
  "ONTARIO,CANADA",
  "ITALY, EUROPE",
];

var text =
    "From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.";

var title = "The 10 Most Influential Surfers of All Time";

var articleText =
    "Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.";
