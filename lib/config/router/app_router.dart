import 'package:edstem/config/router/routes.dart';
import 'package:edstem/config/router/routes_name.dart';
import 'package:edstem/features/search/presentation/pages/details/details.dart';
import 'package:edstem/features/search/presentation/pages/search/search.dart';
import 'package:go_router/go_router.dart';

   final GoRouter appRouter  = GoRouter(
    initialLocation: AppRoutes.search,
    routes: [
      GoRoute(
        path: AppRoutes.search,
        name: RouteNames.search,
        builder: (context, state) => const Search(),
      ),
      GoRoute(
        path: '${AppRoutes.details}/:id',
        name: RouteNames.detail,
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return DetailsScreen(id: id);
        },
      ),
    ],
  );

