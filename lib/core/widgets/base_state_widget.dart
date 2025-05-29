import 'package:edstem/core/constants/constants.dart';
import 'package:edstem/core/network/dio_exception.dart';
import 'package:flutter/material.dart';

class BaseStateWidget extends StatelessWidget {
  final bool isLoading;
  final AppError? errorMessage;
  final Widget Function() content;
  final Widget Function()? loader;
  final Widget Function(AppError)? errorWidget;

  const BaseStateWidget({
    super.key,
    required this.isLoading,
    required this.errorMessage,
    required this.content,
    this.loader,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return loader != null
          ? loader!()
          : const Center(child: CircularProgressIndicator());
    }
    if (errorMessage != null) {
      return errorWidget != null
          ? errorWidget!(errorMessage!)
          : Center(
              child: Text(
                errorMessage!.message,
                style: TextStyle(color: AppColors.red),
              ),
            );
    }
    return content();
  }
}
