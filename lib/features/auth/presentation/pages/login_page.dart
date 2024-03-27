import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/auth/presentation/cubit/authentication_cubit.dart';
import 'package:weather/features/auth/presentation/views/login_view.dart';
import '../../../../di/injection_container.dart' as di;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AuthenticationCubit _authenticationCubit;
  @override
  void initState() {
    super.initState();
    _authenticationCubit = di.sl<AuthenticationCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authenticationCubit,
      child: const LoginView(),
    );
  }
}
