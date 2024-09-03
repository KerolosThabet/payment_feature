import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Payment_Method _Item.dart';

class PaymentMethodListView extends StatefulWidget {
   PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> PaymentMethodList=const[
   'assets/images/card.svg',
   'assets/images/ApplePay.svg',
    "assets/images/paypal.svg"
  ];

  int activeIndex =0 ;

  @override
  Widget build(BuildContext context) {
    return     SizedBox(
      height: 62.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 20.w,);
        },
        itemCount: PaymentMethodList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index ; 
              setState(() {
              });
            },
            child: PaymentMethodItem(
              imagePhat: PaymentMethodList[index],
               isActive: activeIndex ==index,),
               );
        },
      ),
    );
  }
}
