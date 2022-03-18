import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/payment_method_types.dart';

class OrderController extends GetxController{

  PaymentMethod? val = PaymentMethod.masterCard;
  int masterCard=1;

  void changePaymentMethod(PaymentMethod value){
    val =value;
    update();
  }

  void changeCard(int num){
    masterCard=num;
    update();
  }
  Color isMasterCard(int num){
     return masterCard==num?appPurpleColor:Colors.transparent;
  }

}