import 'package:dark_app/features/dark_app/config/routers.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const DarkApp());
}

class DarkApp extends StatelessWidget {
  const DarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SecretBloc(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: routers,
          );
        },
      ),
    );
  }
}
