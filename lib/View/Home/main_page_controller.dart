import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Files/page/file.dart';
import 'package:icloudbox/View/Home/Home/page/home.dart';
import 'Setting/page/setting.dart';
import 'Shared/page/shared.dart';


class MainPageController extends GetxController{
  final pageIndex = 0.obs;
  final List<Widget> tabList=[
    const Home(),
    const File(),
    const Shared(),
    const Setting(),
  ];
}