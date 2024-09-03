
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/customBottom.dart';
import '../../../../../core/routes_Manager.dart';
import '../../../../../core/widgets/Payment Method LIst View.dart';

class PaymentDetailsViewBody extends StatefulWidget {
   PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
String cardNumber ='',cardHolderName ='',expiryDate ='',cvvCode ='';
bool showBackView = false ;
final GlobalKey<FormState> FormKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:  REdgeInsets.all(20.0),
        child: Column(
          children: [
            PaymentMethodListView(),
            SizedBox(height: 12.h,),
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: showBackView,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (p0) {
                },

            ),
            CreditCardForm(
              autovalidateMode: autovalidateMode,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (CreditCardModel) {
                  cardNumber= CreditCardModel.cardNumber;
                  expiryDate= CreditCardModel.expiryDate;
                  cardHolderName = CreditCardModel.cardHolderName ;
                  cvvCode = CreditCardModel.cvvCode ;
                  showBackView = CreditCardModel.isCvvFocused;
                  setState(() {});
                },
                formKey: FormKey),
            SizedBox(height: 40.h,),
            CustomBottom(Title: " Payment", onTap: () {
              if(FormKey.currentState!.validate()){
                FormKey.currentState!.save();
                Navigator.pushNamed(context, RoutesManager.DoneScreen);
                log("payment details saved");
              }else{
                autovalidateMode = AutovalidateMode.always ;
                setState(() {});
              }
            },),
            SizedBox(height: 12.h,),
          ],
        ),
      ),
    );
  }
}



