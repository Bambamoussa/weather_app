import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/styles/weather_theme.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import '../../../../di/injection_container.dart' as di;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  late GetCityListCubit _getCityListCubit;
  late WeatherCubit _weatherCubit;
  @override
  void initState() {
    super.initState();
    _getCityListCubit = di.sl<GetCityListCubit>();
    _weatherCubit = di.sl<WeatherCubit>();
    _getCityListCubit.getCityList();
  }

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getCityListCubit,
        ),
        BlocProvider(
          create: (context) => _weatherCubit,
        )
      ],
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: weatherTheme,
        routerConfig: RouteGenerator.goRouter,
      ),
    );
  }
}
