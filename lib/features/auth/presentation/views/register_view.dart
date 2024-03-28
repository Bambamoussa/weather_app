import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/constants/app_constant.dart';
import 'package:weather/core/custom_widgets/custom_button.dart';
import 'package:weather/core/custom_widgets/custom_snackbar.dart';
import 'package:weather/core/custom_widgets/custom_text_field.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/utils/email_regex.dart';
import 'package:weather/features/auth/presentation/cubit/credentials_cubit.dart';
import 'package:weather/features/auth/presentation/widgets/auth_header_label.dart';
import 'package:weather/features/auth/presentation/widgets/have_account.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.weather_app ?? ''),
        ),
        body: BlocConsumer<CredentialsCubit, CredentialsState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              error: (messageFailure) {
                String message = '';
                if (messageFailure == AppConstants.passwordError) {
                  message = AppLocalizations.of(context)?.passwordMessage ?? '';
                } else {
                  message = AppLocalizations.of(context)?.errormessage ?? '';
                }

                CustomSnackbar.showSnackBar(
                  _scaffoldKey,
                  message,
                  WeatherColors.errorD300,
                );
              },
              success: () => context.goNamed(RouteName.weather),
            );
          },
          builder: (context, state) => Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AuthHeaderLabel(
                          headerLabel:
                              AppLocalizations.of(context)?.register ?? ''),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CustomTextField(
                          textEditingController: _emailController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)?.enterEmail ??
                                  '';
                            } else if (value.isValidEmail() == false) {
                              return AppLocalizations.of(context)?.emailValid;
                            } else if (value.isValidEmail() == true) {
                              return null;
                            }
                            return null;
                          }),
                          label: Text(
                              AppLocalizations.of(context)?.emailAdress ?? ''),
                          hintText: AppLocalizations.of(context)?.enterEmail,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CustomTextField(
                          suffixIcon: IconButton(
                            color: Colors.black87,
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          passwordVisible: passwordVisible,
                          textEditingController: _passwordController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)
                                      ?.enterPassword ??
                                  '';
                            }
                            return null;
                          }),
                          label: Text(
                              AppLocalizations.of(context)?.password ?? ''),
                          hintText: AppLocalizations.of(context)?.enterPassword,
                        ),
                      ),
                      HaveAccount(
                        haveAccount:
                            AppLocalizations.of(context)?.alreadyAccount ?? '',
                        actionLabel: AppLocalizations.of(context)?.login ?? '',
                        onPressed: () => context.goNamed(RouteName.login),
                      ),
                      state.maybeMap(
                        orElse: () => CustomButton(
                          mainButtonLabel:
                              AppLocalizations.of(context)?.register ?? '',
                          onPressed: () => register(),
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
        ),
      ),
    );
  }

  void register() {
    if (_formKey.currentState!.validate()) {
      context
          .read<CredentialsCubit>()
          .register(_emailController.text, _passwordController.text);
    } else {
      CustomSnackbar.showSnackBar(
        _scaffoldKey,
        AppLocalizations.of(context)?.errormessage ?? '',
        WeatherColors.errorD500,
      );
    }
  }
}
