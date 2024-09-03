import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme{
static ThemeData LightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    color: Colors.transparent,
    centerTitle: true,
  ),

  textTheme: TextTheme(
     headlineLarge: TextStyle(
       color: Colors.black,
       fontSize: 25.sp,
       fontWeight: FontWeight.w500
     ),
     bodyMedium: TextStyle(
         color: Colors.black,
         fontSize: 18.sp,
         fontWeight: FontWeight.w400
     ),
    bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600
    ),
  )
);
}