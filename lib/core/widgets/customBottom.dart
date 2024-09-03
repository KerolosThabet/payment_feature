import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottom extends StatelessWidget {
   CustomBottom({super.key, required this.Title, required this.onTap});

  String Title;
   void Function()? onTap ;
   @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color:Color(0xff34A853),
      ),
      height: 73.h,
      width: 350.w,
      child: InkWell(
        onTap:onTap ,
          child: Text(
            Title,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 22.sp))),
    );
  }
}
