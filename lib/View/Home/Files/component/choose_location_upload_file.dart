import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Files/component/choose_location_item.dart';
import 'package:icloudbox/View/Home/Files/component/choose_location_single.dart';
import 'package:icloudbox/View/Home/Files/component/upload_new_folder.dart';
import 'package:icloudbox/View/Home/Files/page/file.dart';


class ChooseLocationUploadFileBottomSheet extends StatelessWidget {
  const ChooseLocationUploadFileBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight-100.h,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.h,horizontal: 20.w),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          'assets/image/file/img/back.png',
                          width: 50.w,
                        )),
                  ),
                  Text(
                    'Location',
                    style: AppStyles.semiBoldHeadline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Done',
                      style: AppStyles.semiBoldBody1.apply(color: Colors.transparent),
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
                        height: 60.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 30.w),
                        child: Text('All Files',style: AppStyles.semiBoldHeadline2,),
                      ),
                      SizedBox(height: 20.h,),

                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: '4 Folder  - 124MB',
                        title: 'Broucelee Va Baradaran',
                         onTap: (){
                           Get.back();
                           Tools.showModalBottomSheet(
                              context: context,
                              child: const ChooseLocationSingleBottomSheet(
                                title: 'Broucelee Va Baradaran',
                              )
                          );
                         },
                      ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'Only Root',
                        title: 'Documents',
                        subTitleIcon: 'assets/image/file/svg/star.svg',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Documents',
                               )
                           );
                         },
                       ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'Only Root',
                        title: 'Photos',
                        subTitleIcon: 'assets/image/file/svg/group.svg',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Photos',
                               )
                           );
                         },
                      ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'Only Root',
                        title: 'Shadi Hosseini',
                        subTitleIcon: 'assets/image/file/svg/group.svg',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Shadi Hosseini',
                               )
                           );
                         },
                       ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'Only Root',
                        title: 'Documents',
                        subTitleIcon: 'assets/image/file/svg/star.svg',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                             context: context,
                             child: const ChooseLocationSingleBottomSheet(
                               title: 'Documents',
                             )
                         );
                          },

                       ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'No Folder - 0KB',
                        title: 'Shadi Hosseini',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Shadi Hosseini',
                               )
                           );
                         },
                       ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'No Folder - 0KB',
                        title: 'Shadi Hosseini',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Shadi Hosseini',
                               )
                           );
                         },

                       ),
                       ChooseLocationItem(
                        img: 'assets/image/temp/svg/document_file.svg',
                        subtitle: 'No Folder - 0KB',
                        title: 'Shadi Hosseini',
                         onTap: (){
                           Get.back();

                           Tools.showModalBottomSheet(
                               context: context,
                               child: const ChooseLocationSingleBottomSheet(
                                 title: 'Shadi Hosseini',
                               )
                           );
                         },
                       ),
                      SizedBox(height: 100.h,)
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height:98.h,
              decoration: BoxDecoration(
                color: AppColors.primary3,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 90.h,
              color: AppColors.accent2,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                        Tools.showModalBottomSheet(context: context,
                            child: const UploadNewFolderBottomSheet());
                      },
                        child: Text('New Folder',style: AppStyles.semiBoldBody1,)),
                    GestureDetector(
                      onTap:  (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const File(),
                        ));
                      },
                        child: Text('Save',style: AppStyles.semiBoldBody1.apply(color: AppColors.accent1),))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
