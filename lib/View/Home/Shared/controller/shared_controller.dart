import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SharedController extends GetxController{

  final PageController pageController = PageController();
  final selectedIndex = 0.obs;
  setIndex(int index){
    selectedIndex(index);
  }


}