import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Home/controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0XFFECFCF7),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: AppColors.accent2,
              height: kToolbarHeight,
              alignment: Alignment.center,
               child: Obx(
                ()=> Row(
                   children: [
                     SizedBox(width: 25.w,),
                     Row(
                       children: [
                         if(controller.selectedIndex.value==0)
                           Container(
                             width: 8.w,
                             decoration: const BoxDecoration(
                               color: AppColors.accent1,
                               shape: BoxShape.circle,
                             ),
                           ),
                         SizedBox(width: 8.w,),
                         InkWell(
                           onTap: (){
                             controller.setIndex(0);
                           },
                             child: Text('Recent',style: AppStyles.semiBoldBody1.apply(color:controller.selectedIndex.value==0 ? AppColors.accent1: AppColors.secondary2),)),
                       ],
                     ),
                     SizedBox(width: 25.w,),
                     Row(
                       children: [
                         if(controller.selectedIndex.value==1)
                           Container(
                             width: 8.w,
                             decoration: const BoxDecoration(
                               color: AppColors.accent1,
                               shape: BoxShape.circle,
                             ),
                           ),
                         SizedBox(width: 8.w,),
                         InkWell(
                             onTap: (){
                               controller.setIndex(1);
                             },
                             child: Text('Shared',style: AppStyles.semiBoldBody1.apply(color:controller.selectedIndex.value==1 ? AppColors.accent1:AppColors.secondary2),)),
                       ],
                     ),
                     SizedBox(width: 25.w,),
                     Row(
                       children: [
                         if(controller.selectedIndex.value==2)
                           Container(
                             width: 8.w,
                             decoration: const BoxDecoration(
                               color: AppColors.accent1,
                               shape: BoxShape.circle,
                             ),
                           ),
                         if(controller.selectedIndex.value==2) SizedBox(width: 8.w,),
                         InkWell(
                             onTap: (){
                               controller.setIndex(2);
                               print('call here');
                             },
                             child: Text('Starred',style: AppStyles.semiBoldBody1.apply(color:controller.selectedIndex.value==2 ? AppColors.accent1: AppColors.secondary2),)),
                       ],
                     ),
                   ],
                 ),
               ),
            ),
        ),
        backgroundColor: AppColors.accent2,
        elevation: 0,
        title: Text('Home',style: AppStyles.semiBoldTitle3,),
        leadingWidth: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 6.w),
            child: Image.asset('assets/image/home/img/search.png'),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 20.w),
            child: Image.asset('assets/image/home/img/notifications.png'),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: - MediaQuery.of(context).padding.top+8.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(
                  color: AppColors.secondary3,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
