import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import '../../../../Utils/text_styls.dart';
import 'info_widget.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<FilesController>();
    return  SizedBox(
      height: ScreenUtil().screenHeight-100.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/image/auth/img/exit.png',
                      width: 50.w,
                    )),
              ),
              Text(
                'Info',
                style: AppStyles.semiBoldHeadline1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                child: Image.asset(
                  'assets/image/file/img/add_friend.png',
                  width: 50.w,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),


         Expanded(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Image.asset('assets/image/temp/img/info_single.png',width: 118.w,),
                 SizedBox(
                   height: 14.h,
                 ),
                 Text('File.PDF',style: AppStyles.semiBoldBody1,),
                 SizedBox(height: 6.h,),
                 Text('8MB -22 Feb 2022',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                 SizedBox(height: 24.h,),
                 const Divider(color: AppColors.secondary2,),
                 const InfoWidget(
                   title: 'assets/image/temp/img/pro2.png',
                   subtitle: 'Viewed January 24, 2022 at 10:32PM',
                   imgImage: 'assets/image/temp/img/pro.jpg',
                 ),
                 const InfoWidget(
                   title: 'assets/image/temp/img/pro2.png',
                   subtitle: 'Viewed January 24, 2022 at 10:32PM',
                   imgImage: 'assets/image/temp/img/pro2.png',
                 ),
                 const InfoWidget(
                   title: 'assets/image/temp/img/pro2.png',
                   subtitle: 'Viewed January 24, 2022 at 10:32PM',
                   imgImage: 'assets/image/temp/img/pro.jpg',
                 ),
                 const InfoWidget(
                   title: 'assets/image/temp/img/pro2.png',
                   subtitle: 'Viewed January 24, 2022 at 10:32PM',
                   imgImage: 'assets/image/temp/img/pro2.png',
                 ),
               ],
             ),
           ),
         )
        ],
      ),
    );
  }
}
