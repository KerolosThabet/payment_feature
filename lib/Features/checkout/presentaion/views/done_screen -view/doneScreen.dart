import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentaion/views/done_screen%20-view/DoneScreenBody.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  DoneScreenBody(),
    );
  }
}
