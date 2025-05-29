
import 'package:edstem/config/injection.dart';
import 'package:edstem/config/router/app_router.dart';
import 'package:edstem/config/theme/app_theme.dart';
import 'package:edstem/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_bloc.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<SearchBloc>()),
        BlocProvider(create: (_) => getIt<MovieDetailBloc>()),
      ],
      child:MaterialApp.router(
      routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
