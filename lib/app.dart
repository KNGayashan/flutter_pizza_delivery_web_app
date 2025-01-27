import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizzamania_admin/app_view.dart';
import 'package:user_repository/user_repository.dart';

import 'src/blocs/authentication_blocs/authentication_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => AuthenticationBloc(
        userRepository: FirebaseUserRepo(),
      ),
      child: const MyAppView(),
    );
  }
}
