import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../Utils/colors.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/file_widget.dart';
import '../controller/file_controller.dart';

class File extends StatelessWidget {
  const File({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FilesController());
    return Scaffold(
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
                          child: Text('All Files',style: AppStyles.semiBoldBody1.apply(color:controller.selectedIndex.value==0 ? AppColors.accent1: AppColors.secondary2),)),
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
                          child: Text('My Files',style: AppStyles.semiBoldBody1.apply(color:controller.selectedIndex.value==1 ? AppColors.accent1:AppColors.secondary2),)),
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
          Padding(
            padding:  EdgeInsets.only(left: 20.w,right: 14.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox( height: 25.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text('All Files',style: AppStyles.semiBoldHeadline2,),
                  ),
                  SizedBox( height: 20.h,),
                   FileWidget(
                     img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Broucelee Va Baradaran',
                    slideOption: controller.slideFileOption,

                  ),
                   FileWidget(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Documents',
                    subTitleIcon: 'assets/image/file/svg/group.svg',
                    slideOption: controller.slideFileOption,

                  ),
                   FileWidget(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Broucelee Va Baradaran',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                    slideOption: controller.slideFileOption,


                  ),
                ],
              ),
            ),
          )
        ],
      ),    );
  }
}

