import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentaion/views/PaymentDetails-view/PaymentDetails_ViewBody.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Details",style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
