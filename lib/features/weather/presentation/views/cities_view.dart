import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/features/weather/presentation/widgets/city_item.dart';

class CitiesView extends StatelessWidget {
  final List<CityEntity> cities;
  const CitiesView({
    required this.cities,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16.0),
      itemCount: cities.length,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        final city = cities[index].city;
        return CityItem(
          city: city,
          onTap: () {
            context.read<WeatherCubit>().getweatherByLocation(city);
            context.goNamed(RouteName.cityDescription);
          },
        );
      },
    );
  }
}
