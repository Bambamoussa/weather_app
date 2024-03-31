import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/features/auth/presentation/pages/register_page.dart';
import 'package:weather/features/weather/presentation/pages/cities_page.dart';
import 'package:weather/features/weather/presentation/pages/register_city_page.dart';
import 'package:weather/features/weather/presentation/views/weather_city_view.dart';

class RouteGenerator {
  RouteGenerator._();

  static GoRouter goRouter = GoRouter(
    initialLocation: '/register',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/register',
        name: RouteName.register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'WeatherNav'),
            routes: [
              GoRoute(
                path: '/cities',
                name: RouteName.cities,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CitiesPage(),
                ),
              ),
              GoRoute(
                path: '/city/description',
                name: RouteName.cityDescription,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: WeatherCityView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey:
                GlobalKey<NavigatorState>(debugLabel: 'RegisterCityNav'),
            routes: [
              GoRoute(
                path: '/register/city',
                name: RouteName.registerCity,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: RegisterCityPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
          key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'),
        );
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index, BuildContext context) {
    if (index == 0) {
      context.go('/cities');
    } else {
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScaffoldWithNavigationBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) => _goBranch(index, context),
        );
      },
    );
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)?.weather_app ?? ''),
      ),
      body: body,
      bottomNavigationBar: NavigationBar(
        backgroundColor: WeatherColors.successSU500,
        indicatorColor: WeatherColors.successSU100,
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(
            label: AppLocalizations.of(context)?.city ?? '',
            icon: const Icon(
              Icons.location_city,
            ),
          ),
          NavigationDestination(
            label: AppLocalizations.of(context)?.registerCity ?? '',
            icon: const Icon(
              Icons.app_registration_outlined,
            ),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
