import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/checkout/presentaion/views/done_screen%20-view/ThankYou_Cart.dart';

class DoneScreenBody extends StatelessWidget {
  const DoneScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.all(30.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
           ThankYouCart(),
          Positioned(
            top: 505.h,
            left: 23.w,
              right: 23.w,
              child: Row(
                    children: List.generate(20, (index) => Expanded(
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                      color: Color(0xffB8B8B8),
                      height: 2.h,
                    ),
                ),
                            ),)
                          ),
              ) ,
          Positioned(
              right: -20.w,
              top: 486.h,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )
          ),
          Positioned(
              left: -20.w,
              top: 486.h,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )
          ),
          Positioned(
            right: 0.w,
            left: 0.w,
            top: -50.h,
            child: CircleAvatar(
              radius: 50.r,
              backgroundColor: Color(0XffD9D9D9),
              child:CircleAvatar(
                radius: 40.r,
                backgroundColor:  Color(0Xff34A853),
                child: Icon(Icons.done_rounded,color: Colors.white,size: 70.sp,),
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
