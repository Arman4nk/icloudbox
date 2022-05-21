import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Model/menu_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/controller/search_file_controller.dart';
import 'package:icloudbox/Widgets/customButton/dropdown_button2.dart';
import 'package:icloudbox/Widgets/fileItem/blur_xy_dialog.dart';
import 'menu_item.dart';

class SearchItem extends StatelessWidget {
/*
  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;*/
  final String? search;

  final FileItemModel itemModel;
  final void Function() onTap;
  final List<SlidableAction> slideOption;

  const SearchItem({
    /*required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,*/
    this.search,
    required this.itemModel,
    required this.slideOption,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchFileController>();
    return  Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {
          print('here');
        }),
        dragDismissible: false,
        // All actions are defined in the children parameter.
        children: slideOption,
      ),
      child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 8.h,
                ),
                height: 58 + 20.h + 13,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.primary3),
              ),
            ),
            GestureDetector(
              onLongPress:()=> showDialog(context: context,
                builder: (context)=> BlurXYDialog(model: itemModel),),
              child: Container(
                width: ScreenUtil().screenWidth,
                margin: EdgeInsets.only(bottom: 8.h, right: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.accent2,
                    border: Border.all(color: AppColors.primary3)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h,),
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child:itemModel.type=='image'?Image.asset(itemModel.img!)
                            :Image.asset('assets/image/type/img/${setTypeImage()}.png')),
                    title: _renderTitle(),
                    /*Text(
                      title,
                      style: AppStyles.semiBoldBody1,
                    ),*/
                    subtitle: Row(
                      children: [
                        if (itemModel.subTitleIcon != null) SvgPicture.asset(itemModel.subTitleIcon!),
                        if (itemModel.subTitleIcon2 != null)
                          SizedBox(
                            width: 5.w,
                          ),
                        if (itemModel.subTitleIcon2 != null)
                          SvgPicture.asset(itemModel.subTitleIcon2!),
                        if (itemModel.subTitleIcon != null)
                          SizedBox(
                            width: 5.w,
                          ),
                        Text(
                          itemModel.subtitle,
                          style: AppStyles.regularBody3
                              .apply(color: AppColors.secondary2),
                        ),
                      ],
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SvgPicture.asset('assets/image/file/svg/arrow.svg'),
                    ),
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }

  _renderTitle() {
    if (search != null) {
      List<String> splitString = itemModel.title.split(search!);

      List<TextSpan> listSpans = [];
      splitString.sublist(1).forEach((element) {
        listSpans.add(TextSpan(text: search , style:  TextStyle(backgroundColor: AppColors.accent3,fontWeight: FontWeight.w600,fontSize: 16.sp)));
        listSpans.add(TextSpan(text: element,style: AppStyles.semiBoldBody1,));
      });

      return Text.rich(
        TextSpan(
          text: splitString[0],
          style: AppStyles.semiBoldBody1,
          children: listSpans,
        ),
      );
    } else {
      return Text(itemModel.title,style: AppStyles.semiBoldBody1,);
    }
  }

  String setTypeImage() {
    switch (itemModel.type) {
      case 'folder':
        return 'folder';
      case 'folders':
        return 'folders';
      case 'music':
        return 'music';
      case 'pdf':
        return 'pdf';
      case 'video':
        return 'video';
      case 'voice':
        return 'voice';
      case 'zip':
        return 'zip';
    }
    return '';
  }
}
