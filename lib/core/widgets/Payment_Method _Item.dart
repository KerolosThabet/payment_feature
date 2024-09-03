import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
   PaymentMethodItem({super.key,this.isActive =false,required this.imagePhat});

  bool isActive ;
  String imagePhat ;
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      height: 62.h,
      width: 103.w,
      decoration: BoxDecoration(
        boxShadow: [
      BoxShadow(
      color: isActive? Color(0xff34A853):  Color.fromARGB(128, 60, 63, 65),
      spreadRadius: 1,
      blurRadius: 15.r,
      offset: Offset(0, 3), // changes position of shadow
    ),
    ],
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          width: 1.5,
          color: isActive? Color(0xff34A853):  Color.fromARGB(128, 60, 63, 65)
        ),
        

      ),
      duration: Duration(milliseconds: 300),
      child: Container(
        decoration: BoxDecoration(
            color:CupertinoColors.secondarySystemBackground,
        borderRadius:  BorderRadius.circular(15.r)),
          child: SvgPicture.asset(imagePhat, fit: BoxFit.scaleDown,)
      ),
    );;
  }
}
