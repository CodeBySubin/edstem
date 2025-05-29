import 'package:edstem/core/constants/app_colors.dart';
import 'package:edstem/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
Widget networkImageWidget(String url, {double? width, double? height}) {
  if (url == 'N/A' || url.isEmpty) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.noImage),
        ),
        color: AppColors.textgrey,
      ),
    );
  }

  return CachedNetworkImage(
    imageUrl: url,
    imageBuilder: (context, imageProvider) => Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
        color: AppColors.textgrey,
      ),
    ),
    placeholder: (context, url) => Container(
      width: width,
      height: height,
      color: AppColors.textgrey,
      child: const Center(child: CircularProgressIndicator()),
    ),
    errorWidget: (context, url, error) => Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.noImage),
        ),
        color: AppColors.textgrey,
      ),
    ),
  );
}
