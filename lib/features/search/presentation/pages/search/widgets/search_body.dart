import 'package:edstem/config/router/routes_name.dart';
import 'package:edstem/core/constants/app_colors.dart';
import 'package:edstem/core/constants/app_strings.dart';
import 'package:edstem/features/search/domain/entities/movie.dart';
import 'package:edstem/features/search/presentation/pages/details/details.dart';
import 'package:edstem/core/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchBody extends StatelessWidget {
  final List<Movie> movieList;
  final ScrollController scrollController;

  const SearchBody({
    super.key,
    required this.movieList,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      shrinkWrap: true,

      itemCount: movieList.length,
      itemBuilder: (context, i) {
        return _buildMovieListItem(movieList[i], context);
      },
    );
  }

  Widget _buildMovieListItem(Movie movies, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.26;
    return SizedBox(
      height: cardHeight,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.grey.shade900,
        child: GestureDetector(
          onTap: () {
            context.pushNamed(
              RouteNames.detail,
              pathParameters: {'id': movies.imdbID},
            );
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                child: networkImageWidget(
                  movies.poster,
                  width: 120,
                  height: double.infinity,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movies.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              'Released: ${movies.year}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.info_outline, size: 16,color: AppColors.primaryColor,),
                              SizedBox(width: 4),
                              Text(
                                AppStrings.details,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
