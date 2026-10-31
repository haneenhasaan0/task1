import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task1/core/app_routes/app_routes.dart';
import 'package:task1/feature/details_screen/presentation/screen/details_sreen.dart';
import 'package:task1/feature/home_screen/presentation/cubit/user_cubit.dart';
import 'package:task1/feature/home_screen/presentation/screen/home_screen.dart';

import '../../feature/home_screen/data/model/user_response.dart';

class Routes {
  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.homeScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => UserCubit()..getUsers(),
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.detailsScreen,
        builder: (context, state) {
          final user = state.extra as UserResponse;

          return DetailsScreen(user: user);
        }
      ),
    ],
  );
}
