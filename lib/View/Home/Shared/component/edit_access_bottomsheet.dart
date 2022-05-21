import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import '../../../../Utils/text_styls.dart';

class EditAccessBottomSheet extends StatelessWidget {
  final String  name;
  final bool viewFlag;
  final bool editFlag;

  const EditAccessBottomSheet({Key? key, required this.name,required this.editFlag,required this.viewFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ShareSharedController());
    return SizedBox(
      height: ScreenUtil().screenHeight - 100.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
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
                  'Edit Access',
                  style: AppStyles.semiBoldHeadline1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        name + ' Access',
                        style: AppStyles.semiBoldHeadline2,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    GestureDetector(
                      onTap: (){
                        //todo create custom check box

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: AppColors.primary3),
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.accent2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: ListTile(
                            title: Text('Edit',style: AppStyles.semiBoldBody1,),
                            subtitle: Text('Orginaze,add and edit',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                            trailing: Container(
                              width: 34.r,
                              height: 34.r,
                              decoration: BoxDecoration(
                                border: Border.all(color:AppColors.primary1),
                                color: AppColors.accent2,
                                shape: BoxShape.circle
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    GestureDetector(
                      onTap: (){
                        //todo create custom check box
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: AppColors.primary3),
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.accent2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: ListTile(
                            title: Text('View',style: AppStyles.semiBoldBody1,),
                            subtitle: Text('Only can view Files',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                            trailing: Container(
                              width: 40.r,
                              height: 40.r,
                              decoration: BoxDecoration(
                                  border: Border.all(color:AppColors.primary1),
                                  color:viewFlag==true? AppColors.accent1:AppColors.accent2,
                                  shape: BoxShape.circle
                              ),
                              child:viewFlag==true? Icon(Icons.done,color: AppColors.accent2,):null,
                            ),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
