import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/component/add_file_page.dart';
import 'package:icloudbox/View/Home/Shared/component/show_share_item.dart';
import 'package:icloudbox/View/Home/Shared/controller/shared_controller.dart';
import 'package:icloudbox/View/Home/Shared/page/search_shared.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';
import 'package:icloudbox/Widgets/fileItem/show_file_item.dart';

class Shared extends StatelessWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final b = GlobalKey();
    final c = GlobalKey();
    final d = GlobalKey();
    final e = GlobalKey();
    final f = GlobalKey();
    final g= GlobalKey();
    final h = GlobalKey();
    final i = GlobalKey();

    final x = Get.put(SharedController());
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
            decoration: BoxDecoration(
              color: AppColors.accent1,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary1, width: 4),
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
        title: Text(
          'File',
          style: AppStyles.semiBoldTitle3,
        ),
        leadingWidth: 0,
        actions: [
          GestureDetector(
            onTap: () {
              //   Get.to(()=>const SearchFile());
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SearchShared(),
              ));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Image.asset('assets/image/home/img/search.png',width: 54.w,),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset('assets/image/home/img/notifications.png',width: 54.w,),
          )
        ],
      ),

      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: -MediaQuery.of(context).padding.top + 8.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(
                  color: AppColors.secondary3,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'List',
                      style: AppStyles.semiBoldHeadline2,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ShowShareItem(
                    key: b,
                    itemModel: FileItemModel(
                        title: 'photos',
                        subtitle: 'No Folder - 0KB',
                        img: 'assets/image/temp/svg/document_file.svg',
                        itemKey:b
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: c,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro9.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:c
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: d,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro9.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:d
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: e,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro8.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:e
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: f,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro8.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:f
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: g,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro9.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:g
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: h,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro9.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:h
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                  ShowShareItem(
                    key: i,
                    itemModel: FileItemModel(
                        title: 'ShadiSinaei.JPG',
                        subtitle: '8MB - 22 Feb 2022',
                        imgImage: 'assets/image/temp/img/pro9.png',
                        subTitleIcon: 'assets/image/file/svg/star.svg' ,
                        itemKey:i
                    ),
                    slideOption: x.slideFileOption,
                    onTap: (){},

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
