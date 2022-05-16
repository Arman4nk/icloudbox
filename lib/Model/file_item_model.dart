import 'package:flutter/material.dart';

class FileItemModel {
  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final String? subTitleIcon2;
  final GlobalKey itemKey;

  FileItemModel(
      {this.img,
      this.imgImage,
      required this.title,
      required this.subtitle,
      this.subTitleIcon,
      this.subTitleIcon2,
      required this.itemKey});
}
