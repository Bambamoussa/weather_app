import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/custom_widgets/custom_button.dart';
import 'package:weather/core/custom_widgets/custom_snackbar.dart';
import 'package:weather/core/custom_widgets/custom_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/styles/weather_text_style.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:weather/features/weather/presentation/cubit/register_city_cubit.dart';

class RegisterCityView extends StatefulWidget {
  const RegisterCityView({super.key});

  @override
  State<RegisterCityView> createState() => _RegisterCityViewState();
}

final TextEditingController _cityController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

class _RegisterCityViewState extends State<RegisterCityView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCityCubit, RegisterCityState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          error: (messageFailure) => CustomSnackbar.showSnackBar(
            _scaffoldKey,
            AppLocalizations.of(context)?.cityErrorMessage ?? '',
            WeatherColors.errorD300,
          ),
          success: () {
            CustomSnackbar.showSnackBar(
              _scaffoldKey,
              AppLocalizations.of(context)?.citySuccessMessage ?? '',
              WeatherColors.successSU500,
            );
            _cityController.text = "";
            context.read<GetCityListCubit>().getCityList();
          },
        );
      },
      builder: (context, state) => ScaffoldMessenger(
        key: _scaffoldKey,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)?.registerCity ?? '',
                style: WeatherTextStyle.titleMedium700,
              ),
              Center(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  reverse: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: CustomTextField(
                              textEditingController: _cityController,
                              label: Text(
                                  AppLocalizations.of(context)?.city ?? ''),
                              hintText: AppLocalizations.of(context)?.enterCity,
                              validator: ((value) {
                                if (value!.isEmpty) {
                                  return AppLocalizations.of(context)
                                          ?.enterCity ??
                                      '';
                                }
                                return null;
                              }),
                            ),
                          ),
                          state.maybeMap(
                            orElse: () => CustomButton(
                              mainButtonLabel:
                                  AppLocalizations.of(context)?.registerCity ??
                                      '',
                              onPressed: () => registerCity(),
                            ),
                            loading: (_) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registerCity() {
    if (_formKey.currentState!.validate()) {
      context.read<RegisterCityCubit>().registerCity(_cityController.text);
    } else {
      CustomSnackbar.showSnackBar(
        _scaffoldKey,
        AppLocalizations.of(context)?.errormessage ?? '',
        WeatherColors.errorD500,
      );
    }
  }
}
