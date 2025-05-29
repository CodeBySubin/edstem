  import 'package:edstem/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget ratingCard(String source, String rating, BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 64) / 3;
    if (source == "N/A") {
      return Container();
    } else {
      return Container(
        width: width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black..withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                source,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.white..withValues(alpha: 0.7),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              rating,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.white..withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      );
    }
  }