import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/feature/weather/presentation/pages/weather_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RouteGenerator {
  RouteGenerator._();
  static GoRouter goRouter = GoRouter(
    initialLocation: '/home',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'HomeNav'),
            routes: [
              GoRoute(
                path: '/home',
                name: RouteName.home,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: WeatherPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'AddCityNav'),
            routes: [
              GoRoute(
                path: '/add',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Text('data'),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'CityNav'),
            routes: [
              GoRoute(
                path: '/city',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Text('city'),
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
      context.go('/home');
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
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(
            label: AppLocalizations.of(context)?.home ?? '',
            icon: const Icon(Icons.home),
          ),
          NavigationDestination(
            label: AppLocalizations.of(context)?.add ?? '',
            icon: const Icon(Icons.event),
          ),
          NavigationDestination(
            label: AppLocalizations.of(context)?.city ?? '',
            icon: const Icon(Icons.location_city),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
