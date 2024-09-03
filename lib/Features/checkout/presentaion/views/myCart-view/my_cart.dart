import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/routes_Manager.dart';

import '../../../../../core/widgets/customBottom.dart';
import '../../../../../core/widgets/information_Wedget.dart';
import '../../../../../core/widgets/totalCost.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon( Icons.arrow_back,size: 30,),
        title: Text("My Cart",style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: Padding(
        padding:  REdgeInsets.all(15.0),
        child: Column(
          children: [
             Expanded(child: Image.asset("assets/images/basket.png")),
            SizedBox(height: 25.h,),
            InformationWidget(title: 'Order Subtotal',value: r"$42.97",),
            InformationWidget(title: 'Discount',value: r"$0",),
            InformationWidget(title: 'Shipping',value: r"$8",),
            Divider(
              height: 36,
              thickness: 2,
              color: Color(0xfffC7C7C7),
            ),
            TotalCost(title: "Total", value: r"$50.97"),
            SizedBox(height: 16.h,),
            CustomBottom(
              Title: "Complete Payment",
              onTap: () {
                Navigator.pushNamed(context, RoutesManager.PaymentDetails);
              },),
            SizedBox(height: 12.h,),

          ],
        ),
      ),
    );
  }
}
