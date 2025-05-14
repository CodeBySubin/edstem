import 'package:edstem/core/constants/constants.dart';
import 'package:edstem/core/network/dio_exception.dart';
import 'package:edstem/core/utils/scroll_helper.dart';
import 'package:edstem/presentation/bloc/search/search_bloc.dart';
import 'package:edstem/presentation/bloc/search/search_event.dart';
import 'package:edstem/presentation/bloc/search/search_state.dart';
import 'package:edstem/presentation/pages/search/widgets/empty_search.dart';
import 'package:edstem/presentation/pages/search/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/presentation/widgets/index.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late ScrollHelper scrollHelper;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    scrollHelper = ScrollHelper(
      onLoadMore: () {
        context.read<SearchBloc>().add(SearchLoadMore());
      },
    );
  }

  @override
  void dispose() {
    scrollHelper.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            title: const Text(
              AppStrings.movieSearch,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  showCursor: true,
                  cursorColor: AppColors.white,
                  textInputAction: TextInputAction.search,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                    hintText: AppStrings.searchForMovies,
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey.shade800,
                    filled: true,

                    hintStyle: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textgrey,
                    ),
                  ),
                  onChanged: (value) {
                    context.read<SearchBloc>().add(SearchTextChanged(value));
                  },
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: BaseStateWidget(
                    isLoading:
                        state.status == SearchStatus.loading &&
                        state.currentPage == 1,
                    errorMessage:
                        state.status == SearchStatus.failure
                            ? AppError(
                              message:
                                  state.errorMessage ??AppStrings.somethingWentWrong ,
                            )
                            : null,
                    content: () {
                      if (_controller.text.isEmpty) {
                        return emptySearch();
                      } else if (state.results.isEmpty) {
                        return NoResultWidget(
                          message: AppStrings.noMoviesFound,
                          subMessage: AppStrings.tryDiffrentWords,
                        );
                      }
                      return SearchBody(
                        movieList: state.results,
                        scrollController: scrollHelper.scrollController,
                      );
                    },
                  ),
                ),
                if (state.status == SearchStatus.loading &&
                    state.currentPage > 1)
                  loaderWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
