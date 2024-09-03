import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/widgets/totalCost.dart';

import '../../../../../core/widgets/Payment_Info_widget.dart';
import '../../../../../core/widgets/information_Wedget.dart';

class ThankYouCart extends StatelessWidget {
  const ThankYouCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350.w,
      height: 690.h,
      decoration:  BoxDecoration(
        color: const Color(0XffD9D9D9),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: REdgeInsets.only(top: 50.h, right: 10.w, left: 10.w),
        child: Column(
             children: [
         Text("Thank you!", style: Theme.of(context).textTheme.headlineLarge,),
               Text("Your transaction was successful", style: Theme.of(context).textTheme.bodyMedium,),
               SizedBox(height: 40.h,),
               PaymentInfoWidget(title: "Date",value: "01/24/2023",),
               SizedBox(height: 20.h,),
               PaymentInfoWidget(title: "Time",value: "10:15 AM",),
               SizedBox(height: 20.h,),
               PaymentInfoWidget(title: "To",value: "Sam Louis",),
               SizedBox(height: 22.h,),
               Divider(color: const Color(0xffC7C7C7), thickness: 1.5.h,height: 2.h,),
               SizedBox(height: 24.h,),
               TotalCost(title: "Total", value: r"$50.97",),
               SizedBox(height: 30.h,),
               Container(
                 height: 73.h,
                 width: 305.w,
                 decoration: ShapeDecoration(
                   color: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.r)
                     )
                 ),
                 child: Padding(
                   padding: REdgeInsets.only(left: 25.w),
                   child: Row(
                     children: [
                       SvgPicture.asset("assets/images/logoMasterCart.svg"),
                      Padding(
                        padding: REdgeInsets.only(left: 25.w,top: 16.h),
                        child: Column(
                          children: [
                            Text("MasterCard", style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.w600, fontFamily: "Inter",),),
                            Text("Mastercard **78  ", style: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w400, fontFamily: "Inter", color: Color(0x83000000)),)
                          ],
                        ),
                      )
                     ],
                   ),
                 ),
               )

            ],
          
        ),
      ));;
  }
}
