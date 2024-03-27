import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/custom_widgets/custom_button.dart';
import 'package:weather/core/custom_widgets/custom_snackbar.dart';
import 'package:weather/core/custom_widgets/custom_text_field.dart';
import 'package:weather/core/router/route_name.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/utils/email_regex.dart';
import 'package:weather/features/auth/presentation/cubit/authentication_cubit.dart';
import 'package:weather/features/auth/presentation/widgets/auth_header_label.dart';
import 'package:weather/features/auth/presentation/widgets/have_account.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          error: (messageFailure) {
            CustomSnackbar.showSnackBar(
              _scaffoldKey,
              AppLocalizations.of(context)?.invalidCredential ?? '',
              WeatherColors.errorD500,
            );
          },
          success: () => context.goNamed(RouteName.home),
        );
      },
      builder: (context, state) => ScaffoldMessenger(
        key: _scaffoldKey,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AuthHeaderLabel(
                          headerLabel:
                              AppLocalizations.of(context)?.login ?? ''),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CustomTextField(
                          label: Text(
                              AppLocalizations.of(context)?.emailAdress ?? ''),
                          hintText: AppLocalizations.of(context)?.enterEmail,
                          textEditingController: _emailController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)?.enterEmail;
                            } else if (value.isValidEmail() == false) {
                              return AppLocalizations.of(context)?.enterEmail;
                            } else if (value.isValidEmail() == true) {
                              return null;
                            }
                            return null;
                          }),
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
                              AppLocalizations.of(context)?.notAccount ?? '',
                          actionLabel:
                              AppLocalizations.of(context)?.register ?? '',
                          onPressed: () => context.goNamed(RouteName.register)),
                      state.maybeMap(
                        orElse: () => CustomButton(
                          mainButtonLabel:
                              AppLocalizations.of(context)?.login ?? '',
                          onPressed: () {
                            logIn();
                          },
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

  void logIn() async {
    if (_formKey.currentState!.validate()) {
      context
          .read<AuthenticationCubit>()
          .logIn(_emailController.text, _passwordController.text);
    } else {
      CustomSnackbar.showSnackBar(
        _scaffoldKey,
        AppLocalizations.of(context)?.errormessage ?? '',
        WeatherColors.errorD500,
      );
    }
  }
}
