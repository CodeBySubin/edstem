import 'package:edstem/core/constants/constants.dart';
import 'package:flutter/material.dart';

Widget detailSection(String title, String content) {
  if (content == "N/A") {
    return Container();
  } else {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ).copyWith(color: Colors.amber),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white..withValues(alpha: 0.9),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
