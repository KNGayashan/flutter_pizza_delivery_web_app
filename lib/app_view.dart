import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_repository/pizza_repository.dart';
import 'package:pizzamania_admin/src/blocs/authentication_blocs/authentication_bloc.dart';
import 'package:pizzamania_admin/src/modules/home/blocs/get_pizza_bloc/get_pizza_bloc.dart';
import 'src/routes/routes.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocProvider(
          create: (context) =>
              GetPizzaBloc(FirebasePizzaRepo())..add(GetPizza()),
          child: MaterialApp.router(
            title: "Pizza Admin",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.light(
                background: Colors.grey.shade200,
                onBackground: Colors.black,
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
            ),
            routerConfig: router(context.read<AuthenticationBloc>()),
          ),
        );
      },
    );
  }
}
