import 'package:edstem/core/constants/constants.dart';
import 'package:flutter/material.dart';

class NoResultWidget extends StatelessWidget {
  final String message;
  final TextStyle? textStyle;
  final String? subMessage;

  const NoResultWidget({
    super.key,
    this.message = AppStrings.noResultsFound,
    this.textStyle,
    this.subMessage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie_creation_outlined,
              size: 100,
              color: Colors.grey.shade500,
            ),
            const SizedBox(height: 24),
            Text(
              message,
              textAlign: TextAlign.center,
              style: textStyle ??
                  theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              subMessage ?? "Try a different title or check your spelling.",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
