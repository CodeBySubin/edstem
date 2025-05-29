import 'package:edstem/core/network/dio_exception.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_bloc.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_event.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_state.dart';
import 'package:edstem/features/search/presentation/pages/details/widgets/details_body.dart';
import 'package:edstem/features/search/presentation/pages/details/widgets/details_header.dart';
import 'package:edstem/core/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatefulWidget {
  final String id;

  const DetailsScreen({super.key, required this.id,});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MovieDetailBloc>().add(LoadMovieDetail(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          return BaseStateWidget(
            isLoading: state is MovieDetailLoading,
            errorMessage: state is MovieDetailError
                ? AppError(message: state.message)
                : null,
            content: () {
              if (state is MovieDetailLoaded) {
                final detail = state.detail;
                return CustomScrollView(
                  slivers: [
                    DetailsHeader(detail: detail),
                    DetailsBody(detail: detail),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
