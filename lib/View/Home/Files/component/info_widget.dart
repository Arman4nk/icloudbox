import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icloudbox/View/Home/Files/component/share_item.dart';

import '../../../../Utils/colors.dart';
import '../../../../Utils/text_styls.dart';
import 'info_bottomsheet.dart';

class InfoWidget extends StatelessWidget {
final String imgImage;
final String title;
final String subtitle;
  const InfoWidget({Key? key,required this.imgImage,required this.subtitle,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.w),
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(imgImage)),
            title: Text(
              title,
              style: AppStyles.semiBoldBody1,
            ),
            subtitle: Row(
              children: [
                  SizedBox(
                    width: 5.w,
                  ),
                Text(
                  subtitle,
                  style: AppStyles.regularBody3
                      .apply(color: AppColors.secondary2),
                ),
              ],
            ),
          ),
          const Divider(color: AppColors.secondary2,indent: 20,endIndent: 20,),

        ],
      ),
    );
  }
}
