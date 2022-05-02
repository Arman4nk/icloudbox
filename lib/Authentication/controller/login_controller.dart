import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var passwordVisible = false.obs;
  GlobalKey myHeight = GlobalKey();
  final h = 0.0.obs;
  switchPassFlag(){
    passwordVisible(!passwordVisible.value);
  }
  late FocusNode myFocusNode1;
  late FocusNode myFocusNode2;
  late FocusNode myFocusNode3;
  late FocusNode myFocusNode4;
  late FocusNode myFocusNode5;
  late FocusNode myFocusNode6;
  late FocusNode myFocusNode7;
  final focus1 = false.obs;
  final focus2 = false.obs;
  final focus3 = false.obs;
  final focus4 = false.obs;
  final focus5 = false.obs;
  final focus6 = false.obs;
  final focus7 = false.obs;

  @override
  void onInit() {
    myFocusNode2 = FocusNode();
    myFocusNode2.addListener(() {
      if(myFocusNode2.hasFocus){
        focus2(true);
      }
      else{
        focus2(false);
      }
    });

    myFocusNode1 = FocusNode();
    myFocusNode1.addListener(() {
      if(myFocusNode1.hasFocus){
        focus1(true);
      }
      else{
        focus1(false);
      }
    });

    myFocusNode3 = FocusNode();
    myFocusNode3.addListener(() {
      if(myFocusNode3.hasFocus){
        focus3(true);
      }
      else{
        focus3(false);
      }
    });

    myFocusNode4 = FocusNode();
    myFocusNode4.addListener(() {
      if(myFocusNode4.hasFocus){
        focus4(true);
      }
      else{
        focus4(false);
      }
    });

    myFocusNode5 = FocusNode();
    myFocusNode5.addListener(() {
      if(myFocusNode5.hasFocus){
        focus5(true);
      }
      else{
        focus5(false);
      }
    });

    myFocusNode6 = FocusNode();
    myFocusNode6.addListener(() {
      if(myFocusNode6.hasFocus){
        focus6(true);
      }
      else{
        focus6(false);
      }
    });

    myFocusNode7 = FocusNode();
    myFocusNode7.addListener(() {
      if(myFocusNode7.hasFocus){
        focus7(true);
      }
      else{
        focus7(false);
      }
    });

    super.onInit();
  }
  @override
  void dispose() {
    myFocusNode1.dispose();
    myFocusNode2.dispose();
    myFocusNode3.dispose();
    myFocusNode4.dispose();
    myFocusNode5.dispose();
    myFocusNode6.dispose();
    myFocusNode7.dispose();
    super.dispose();
  }

}