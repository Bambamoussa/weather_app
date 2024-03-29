import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/constants/app_image_constant.dart';
import 'package:weather/core/styles/weather_text_style.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/features/weather/presentation/widgets/weather_city_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherCityView extends StatelessWidget {
  const WeatherCityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Image.asset(AppImages.weather),
        ),
        BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) => state.map(
            initial: (_) => const CircularProgressIndicator(),
            loading: (_) => const CircularProgressIndicator(),
            loaded: (weather) {
              final weatherCityInfo = weather.weatherEntity;
              return Column(
                children: [
                  Text(
                    weatherCityInfo.name,
                    style: WeatherTextStyle.titleLarge700,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WeatherCityInfo(
                        typeInfo:
                            AppLocalizations.of(context)?.temperature ?? '',
                        weatherInfo: weatherCityInfo
                            .mainWeatherEntity.temperature
                            .toString(),
                      ),
                      WeatherCityInfo(
                        typeInfo:
                            AppLocalizations.of(context)?.hasImpression ?? '',
                        weatherInfo: weatherCityInfo
                            .mainWeatherEntity.temperature
                            .toString(),
                      ),
                      WeatherCityInfo(
                        typeInfo: AppLocalizations.of(context)?.pressure ?? '',
                        weatherInfo: weatherCityInfo.mainWeatherEntity.pressure
                            .toString(),
                      ),
                      WeatherCityInfo(
                        typeInfo: AppLocalizations.of(context)?.humidity ?? '',
                        weatherInfo: weatherCityInfo.mainWeatherEntity.humidity
                            .toString(),
                      ),
                    ],
                  )
                ],
              );
            },
            error: (_) => Text(
              AppLocalizations.of(context)?.notWeather ?? '',
              style: WeatherTextStyle.titleLarge700,
            ),
          ),
        ),
      ],
    );
  }
}
