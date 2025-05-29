import 'package:edstem/core/constants/constants.dart';
import 'package:edstem/features/search/domain/entities/details.dart';
import 'package:edstem/core/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final MovieDetail detail;

  const DetailsHeader({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      expandedHeight: MediaQuery.of(context).size.height * 0.5,
      pinned: true,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            networkImageWidget(detail.poster),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black..withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        detail.released,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white..withValues(alpha: 0.9),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.amber,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "${AppStrings.imdb} ${detail.imdbRating}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
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
