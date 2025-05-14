import 'package:edstem/presentation/bloc/details/details_bloc.dart';
import 'package:edstem/presentation/pages/details/widgets/details_body.dart';
import 'package:edstem/presentation/pages/details/widgets/details_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/presentation/bloc/details/details_event.dart';
import 'package:edstem/presentation/bloc/details/details_state.dart';

class DetailsScreen extends StatefulWidget {
  final String id;

  const DetailsScreen({super.key, required this.id});

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
          if (state is MovieDetailLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MovieDetailError) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.white),
              ),
            );
          } else if (state is MovieDetailLoaded) {
            final detail = state.detail;
            return CustomScrollView(
              slivers: [
                DetailsHeader(detail: detail),
                DetailsBody(detail: detail),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

}