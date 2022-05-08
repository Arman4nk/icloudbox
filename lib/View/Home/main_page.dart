import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'main_page_controller.dart';

class MAinPage extends StatelessWidget {
  const MAinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = MainPageController();
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.textAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/image/bottom_navigator/svg/home.svg'),
              label: 'Home',
              activeIcon: Image.asset('assets/image/bottom_navigator/img/home_active.png',width: 25.5,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/image/bottom_navigator/svg/file.svg'),
              label: 'Files',
              activeIcon: Image.asset(
                'assets/image/bottom_navigator/img/file_active.png',width: 25.5,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/image/bottom_navigator/svg/Shared.svg'),
              label: 'Shared',
              activeIcon: Image.asset(
                'assets/image/bottom_navigator/img/Shared_active.png',width: 34,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/image/bottom_navigator/svg/setting.svg'),
              activeIcon: Image.asset(
                'assets/image/bottom_navigator/img/setting_active.png',width: 25,),
              label: 'Settings',
            ),
          ],
          currentIndex: controller.pageIndex.value,
          selectedItemColor: AppColors.accent3,
          type: BottomNavigationBarType.fixed,
          onTap:(int index) {
            controller.pageIndex.value=index;
          },
          selectedLabelStyle:  AppStyles.semiBoldBody2.apply(color: AppColors.accent3),
          unselectedLabelStyle: AppStyles.semiBoldBody2,
          unselectedItemColor: Colors.grey.shade600,
          showUnselectedLabels: true,

        ) ,
        body: Stack(
          children: [
            controller.tabList.elementAt(controller.pageIndex.value),
            Positioned.fill(
              bottom:-kBottomNavigationBarHeight +8.h ,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height:Platform.isAndroid ? kBottomNavigationBarHeight : 90,
                  decoration: BoxDecoration(
                    color: AppColors.secondary3,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:,
            // )
          ],
        ),
      ),
    );
  }
}
