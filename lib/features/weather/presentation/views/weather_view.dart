import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetCityListCubit, GetCityListState>(
        builder: (context, state) => state.map(
          initial: (_) => const CircularProgressIndicator(),
          loading: (_) => const CircularProgressIndicator(),
          success: (userList) {
            final cityList = userList.userCityList;
            return cityList.isEmpty
                ? Text(AppLocalizations.of(context)?.nothingCity ?? '')
                : ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16.0),
                    itemCount: cityList.length,
                    padding: const EdgeInsets.all(16.0),
                    itemBuilder: (context, index) {
                      return Text(
                        style: const TextStyle(color: Colors.black45),
                        cityList[index].city,
                      );
                    });
          },
          error: (errorMessage) => Text(errorMessage.messageFailure),
        ),
      ),
    );
  }
}
