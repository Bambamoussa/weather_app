import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/core/styles/weather_text_style.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/features/weather/presentation/widgets/city_item.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCityListCubit, GetCityListState>(
      builder: (context, state) => state.map(
        initial: (_) => const CircularProgressIndicator(),
        loading: (_) => const CircularProgressIndicator(),
        success: (userList) {
          final cityList = userList.userCityList;
          return cityList.isEmpty
              ? Center(
                  child: Text(
                    AppLocalizations.of(context)?.nothingCity ?? '',
                    style: WeatherTextStyle.titleLarge700,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16.0),
                  itemCount: cityList.length,
                  padding: const EdgeInsets.all(16.0),
                  itemBuilder: (context, index) {
                    final city = cityList[index].city;
                    return CityItem(
                      city: city,
                      onTap: () {
                        context.read<WeatherCubit>().getweatherByLocation(city);
                        context.goNamed(RouteName.cityDescription);
                      },
                    );
                  });
        },
        error: (errorMessage) => Text(errorMessage.messageFailure),
      ),
    );
  }
}
