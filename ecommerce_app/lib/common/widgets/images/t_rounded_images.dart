import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImages extends StatelessWidget {
  const TRoundedImages({
    super.key,
    this.width,
    this.height,
    required this.imagesUrl,
    this.applyImageRadius = true,
    this.border,
    this.backGroundColor,
    this.fits,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imagesUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backGroundColor;
  final BoxFit? fits;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backGroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imagesUrl)
                  : AssetImage(imagesUrl) as ImageProvider,
              fit: fits,
            )),
      ),
    );
  }
}
