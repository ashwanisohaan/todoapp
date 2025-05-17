import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/statemanage/app_provider.dart';
import 'package:todoapp/routing/app_routing.dart';
import 'package:todoapp/statemanage/bloc_pattern.dart';
import 'package:todoapp/statemanage/cubit_bloc.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => NameProvider()),
      ChangeNotifierProvider(create: (context) => TodoProvider()),
      BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
      BlocProvider<CounterBlocWithState>(
        create: (context) => CounterBlocWithState(),
      ),
      BlocProvider<ResponseCubit>(create: (context) => ResponseCubit()),
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouterConfig,
      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',
      //   initialRoute: AppRoutes.screenSplash,
      //   routes: AppRoutes.routes,
    );
  }
}
