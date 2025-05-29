import 'package:edstem/core/constants/constants.dart';
import 'package:edstem/core/network/dio_exception.dart';
import 'package:edstem/core/utils/scroll_helper.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_bloc.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_event.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_state.dart';
import 'package:edstem/features/search/presentation/pages/search/widgets/empty_search.dart';
import 'package:edstem/features/search/presentation/pages/search/widgets/search_field.dart';
import 'package:edstem/features/search/presentation/pages/search/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/core/widgets/index.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

final List<String> years = ['2024', '2023', '2022', '2021'];
final List<String> genre = ["crime thriller, fantasy"];
final List<double> rating = [5.1, 5.6, 5.0];

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
                SearchField(
                  controller: _controller,
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
                                  state.errorMessage ??
                                  AppStrings.somethingWentWrong,
                            )
                            : null,
                    content: () {
                      if (_controller.text.isEmpty) {
                        return emptySearch();
                      } else if (state.filter.isEmpty) {
                        return NoResultWidget(
                          message: AppStrings.noMoviesFound,
                          subMessage: AppStrings.tryDiffrentWords,
                        );
                      }
                      return SearchBody(
                        movieList: state.filter, // use filtered list here
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
          bottomSheet: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.textgrey),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      _controller.clear();
                      context.read<SearchBloc>().add(FilterByYear(''));
                    },
                    child: const Text('Clear Filter'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                      color: AppColors.textgrey,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: DropdownButton<String>(
                      hint: Text("year"),
                      dropdownColor: Colors.amber,
                      value:
                          state.selectedYear != null &&
                                  state.selectedYear!.isNotEmpty
                              ? state.selectedYear
                              : null,
                      underline: SizedBox.shrink(),
                      items:
                          years.map((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                      onChanged: (value) {
                        context.read<SearchBloc>().add(FilterByYear(value!));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
