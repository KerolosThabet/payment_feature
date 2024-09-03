import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentInfoWidget extends StatelessWidget {
   PaymentInfoWidget({super.key,required this.title , required this.value});

  String title ;
  String value ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style:Theme.of(context).textTheme.bodyMedium ),
        Spacer(),
        Text(value , style:Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600))
      ],
    );;
  }
}
