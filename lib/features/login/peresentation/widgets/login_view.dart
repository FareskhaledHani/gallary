import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/auth_cubit.dart';
import 'login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) {
        return AuthCubit();
      },
      child: const Scaffold(
        resizeToAvoidBottomInset: false,

        body: LoginViewBody(),
      ),
    );
  }
}