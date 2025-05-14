import 'package:edstem/core/constants/app_colors.dart';
import 'package:edstem/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget networkImageWidget(String url, {double? width, double? height}) {
  return CachedNetworkImage(
    imageUrl: url,
    imageBuilder:
        (context, image) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: image),
            color: AppColors.textgrey,
          ),
        ),
    placeholder:
        (context, url) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.textgrey,
          ),
          child: Center(child: const CircularProgressIndicator()),
        ),
    errorWidget:
        (context, url, error) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.noImage),
            ),
            color: AppColors.textgrey,
          ),
        ),
  );
}
