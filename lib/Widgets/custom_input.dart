import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/colors.dart';
import '../Utils/text_styls.dart';
class CustomInput extends StatelessWidget {
  final String? hintText;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? hintTextColor;
  final IconData? iconInput;
  final IconData? iconInputRight;
  final Color? colorIcon;
  final Color? svgColor;
  final EdgeInsets? padding;
  final TextInputType? textInputType;
  final Function(String a)? onChange;
  final String? Function(String?)? validator;
  final void Function(String?)? onSave;
  final void Function()? onComplete;
  final int? maxLength;
  final int? minlines;
  final int? maxLine;
  final String? error;
  final String? lable;
  final double? height;
  final String? initValue;
  final TextEditingController? controller;
  final bool? isObscure;
  final Function()? onIconPress;
  final String? svgIcon;
  final String? header;
  final DropdownButtonHideUnderline? dropDown;
  final FocusNode? focusNode;
  final bool? pressed;

  CustomInput(
      {Key? key,
        this.hintText,
        this.backgroundColor,
        this.borderColor,
        this.hintTextColor,
        this.iconInput,
        this.iconInputRight,
        this.colorIcon,
        this.validator,
        this.padding,
        this.textInputType,
        this.error,
        this.lable,
        this.onChange,
        this.maxLength,
        this.onSave,
        this.initValue,
        this.controller,
        this.isObscure,
        this.onIconPress,
        this.svgIcon,
        this.dropDown,
        this.minlines,
        this.maxLine,
        this.onComplete,
        this.svgColor,
        this.header,
       required this.focusNode,
       required this.pressed,
        this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller != null) {
      controller!.text = initValue ?? "";
    }
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(header??'',style: AppStyles.semiBoldBody2,),
          ),
          SizedBox(height: 10.h,),
          TextFormField(
            focusNode: focusNode,
            textInputAction: TextInputAction.next,
            minLines: minlines ?? 1,
            maxLines: maxLine ?? 1,
            obscureText: isObscure == null ? false : isObscure!,
            initialValue: controller == null ? initValue : null,
            controller: controller,
            keyboardType: textInputType,
            maxLength: maxLength,
            style: AppStyles.regularBody1,
            onChanged: onChange,
            validator: validator,
            onSaved: onSave,
            decoration: InputDecoration(
              errorStyle: const TextStyle(height: 0),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              prefixIcon: dropDown ??
                  IconButton(
                      color: colorIcon ?? AppColors.secondary2,
                      onPressed: onIconPress,
                      icon: svgIcon != null
                          ? SvgPicture.asset(svgIcon!,color: svgColor,)
                          : Icon(iconInput)),
              suffixIcon: IconButton(
                  color: colorIcon ?? const Color(0XFF563746),
                  onPressed: onIconPress,
                  icon: Icon(iconInputRight)),
              filled: true,
              fillColor:pressed!? AppColors.textAccent:AppColors.primary1,
              focusColor:AppColors.accent2,
              hintText: hintText,
              hintStyle: AppStyles.regularBody1
                  .apply(color: AppColors.secondary2),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.primary3,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.primary3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
