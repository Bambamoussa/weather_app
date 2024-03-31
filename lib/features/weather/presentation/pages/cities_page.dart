
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/error/generic_error_message.dart';
import 'package:weather/core/styles/weather_text_style.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/features/weather/presentation/views/cities_view.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCityListCubit, GetCityListState>(
      builder: (context, state) => state.map(
        initial: (_) => const CircularProgressIndicator(),
        loading: (_) => const CircularProgressIndicator(),
        success: (userList) {
          final cities = userList.userCityList;
          return cities.isEmpty
              ? Center(
                  child: Text(
                    AppLocalizations.of(context)?.nothingCity ?? '',
                    style: WeatherTextStyle.titleLarge700,
                  ),
                )
              : CitiesView(cities: cities);
        },
        error: (error) =>  GenericErrorMessage(failure: error.failure),
      ),
    );    
  }
}
