import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/add_member_model.dart';
import 'package:icloudbox/Utils/colors.dart';

class AddMemberController extends GetxController{

  var searchText = ''.obs;

  final isSelected1 = false.obs;
  final isEditable1 = false.obs;
  final isViewable1 = false.obs;
  final isSelected2 = false.obs;

  List<AddMemberModel> selectedList =[];

  late FocusNode myFocusNode;
  final focus = false.obs;
  final isTyping = false.obs;


  @override
  void onInit() {
    myFocusNode = FocusNode();
    myFocusNode.addListener(() {
      if(myFocusNode.hasFocus){
        focus(true);
      }
      else{
        focus(false);
      }
    });

    super.onInit();
  }

}