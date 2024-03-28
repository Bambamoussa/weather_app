import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/presentation/cubit/register_city_cubit.dart';
import 'package:weather/features/weather/presentation/views/register_city_view.dart';
import '../../../../di/injection_container.dart' as di;

class RegisterCityPage extends StatefulWidget {
  const RegisterCityPage({super.key});

  @override
  State<RegisterCityPage> createState() => _RegisterCityState();
}

class _RegisterCityState extends State<RegisterCityPage> {
  late RegisterCityCubit _registerCityCubit;
  @override
  void initState() {
    super.initState();
    _registerCityCubit = di.sl<RegisterCityCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _registerCityCubit,
      child: const RegisterCityView(),
    );
  }
}
