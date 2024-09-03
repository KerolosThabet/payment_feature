import 'package:flutter/material.dart';

class TotalCost extends StatelessWidget {
   TotalCost({required this.title ,required this.value, super.key});

  String title ;
  String value ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style:Theme.of(context).textTheme.bodyLarge ),
        Spacer(),
        Text(value , style:Theme.of(context).textTheme.bodyLarge)
      ],
    );
  }
}
