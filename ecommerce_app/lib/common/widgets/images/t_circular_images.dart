import 'dart:ffi';

import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backGroundColor,
  });
  final double width, height, padding;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backGroundColor ??
                (THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white),
            borderRadius: BorderRadius.circular(100)),
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : const AssetImage(TImages.clothIcon) as ImageProvider,
          color: overlayColor,
        ));
  }
}
