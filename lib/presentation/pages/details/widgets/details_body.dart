import 'package:edstem/core/constants/app_strings.dart';
import 'package:edstem/domain/entities/details.dart';
import 'package:edstem/presentation/pages/details/widgets/detail_section.dart';
import 'package:edstem/presentation/pages/details/widgets/info.dart';
import 'package:edstem/presentation/pages/details/widgets/rating_card.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final MovieDetail detail;

  const DetailsBody({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InfoChip(
                    label: detail.rated,
                    icon: Icons.remove_red_eye,
                    color: Colors.indigo.shade300,
                  ),
                  InfoChip(
                    label: detail.runtime,
                    icon: Icons.timer,
                    color: Colors.green.shade300,
                  ),
                  InfoChip(
                    label: detail.language,
                    icon: Icons.language,
                    color: Colors.blue.shade300,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Plot",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white..withValues(alpha: 0.9),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              detail.plot,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white..withValues(alpha: 0.9),
                height: 1.5,
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              "Ratings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(detail.ratings.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == detail.ratings.length - 1 ? 0 : 12,
                    ),
                    child: ratingCard(
                      detail.ratings[index].source,
                      detail.ratings[index].value,
                      context,
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.green.shade400,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.boxOffice,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      detail.boxOffice,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white..withValues(alpha: 0.9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            detailSection(AppStrings.director, detail.director),
            detailSection(AppStrings.writers, detail.writer),
            detailSection(AppStrings.cast, detail.actors),
            detailSection(AppStrings.genre, detail.genre),
            const SizedBox(height: 16),

            detail.awards == "N/A"
                ? Container()
                : Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.amber..withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.emoji_events,
                        color: Colors.amber,
                        size: 32,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                            AppStrings.awards,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              detail.awards,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white..withValues(alpha: 0.9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
