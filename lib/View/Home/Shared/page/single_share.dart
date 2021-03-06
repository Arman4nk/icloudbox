import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Files/component/add_file_page.dart';
import 'package:icloudbox/View/Home/Files/page/single_file_details.dart';
import 'package:icloudbox/View/Home/Shared/component/share_shared_bottomsheet.dart';
import 'package:icloudbox/View/Home/Shared/controller/single_share_controller.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';
import 'package:icloudbox/Widgets/fileItem/show_file_item.dart';


class SingleShare extends StatelessWidget {
  final String title;
  const SingleShare({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final x = Get.put(SingleShareController());
    final e = GlobalKey();

    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            useRootNavigator: true,
            elevation: 0,
            enableDrag: false,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => const BlurButtomsheet(
              child: AddFilePage(),
            ),
          );
        },
        child: Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: AppColors.accent1,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.textAccent,
              size: 30,
            )),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.accent2,
        elevation: 0,
        toolbarHeight: 116.h,
        leading: const SizedBox(),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: Image.asset('assets/image/file/img/back.png',width: 54.w,),
                    ),
                  ),
                  Text(title,style: AppStyles.semiBoldHeadline1,),
                  GestureDetector(
                    onTap: () {
                      Tools.showModalBottomSheet(
                          context: context,
                          child:const ShareSharedBottomSheet()
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: Image.asset('assets/image/share/img/persons.png',width: 54.w,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text('Online Members',style: AppStyles.semiBoldHeadline2,),
                ),
                  SizedBox(height: 30.h,),
                  SizedBox(
                    height: 70.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 20.w,),
                            for(int i=2 ; i<=14 ; i ++)
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage('assets/image/temp/img/pro$i.png'),
                                    radius: 35,
                                  ),
                                  Positioned.fill(
                                    top: -40,
                                    left: 5,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 15.w,
                                        padding: EdgeInsets.all(3),
                                        decoration:  BoxDecoration(
                                          color: AppColors.secondary4,
                                          shape: BoxShape.circle,
                                          border: Border.all(color: AppColors.accent2,width: 3.w),
                                        ),

                                      ),
                                    ),
                                  )
                                ],
                              ),
                            SizedBox(width: 20.w,),
                          ],
                        )
                      ],
                    ),
                  ),






                SizedBox(height: 25.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text('Files',style: AppStyles.semiBoldHeadline2,),
                ),
                SizedBox( height: 20.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: ShowFileItem(
                    itemModel: FileItemModel(
                        title: 'karo.Mp4',
                        subtitle: 'No Folder - 0KB',
                        type: 'video',
                        itemKey:e),
                    slideOption: x.slideFileOption,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SingleFileDetails(title: 'Documents'),
                      ));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
