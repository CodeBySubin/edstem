import 'package:edstem/core/constants/constants.dart';
import 'package:edstem/core/network/dio_exception.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final AppError error;
  const CustomErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              error.statusCode!,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              error.message,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
