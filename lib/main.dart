import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/checkout/presentaion/views/myCart-view/my_cart.dart';
import 'package:payment/core/routes_Manager.dart';

import 'Features/checkout/presentaion/views/PaymentDetails-view/PaymentDetails.dart';
import 'Features/checkout/presentaion/views/done_screen -view/doneScreen.dart';
import 'core/Theme/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>MaterialApp(
        theme:AppTheme.LightTheme ,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: MyCartView(),
        initialRoute: RoutesManager.MyCartRoute,
        routes: {
          RoutesManager.MyCartRoute:(_)=> MyCartView(),
          RoutesManager.PaymentDetails:(_)=> PaymentDetails(),
          RoutesManager.DoneScreen:(_)=>  DoneScreen(),
        },
      ),
    );
  }
}

