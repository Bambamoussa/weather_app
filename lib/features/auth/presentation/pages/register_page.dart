import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/auth/presentation/cubit/credentials_cubit.dart';
import 'package:weather/features/auth/presentation/views/register_view.dart';
import '../../../../di/injection_container.dart' as di;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late CredentialsCubit _credentialsCubit;
  @override
  void initState() {
    super.initState();
    _credentialsCubit = di.sl<CredentialsCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _credentialsCubit,
      child: const RegisterView(),
    );
  }
}
