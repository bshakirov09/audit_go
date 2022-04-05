
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goplaciz/applications/profile/profile_bloc.dart';

import 'presentation/pages/app_widget.dart';
import 'utils/app_init.dart';
import 'utils/get_it.dart';

void main() async {

  await initializeApp();

  runApp(EasyLocalization(
    child: const MyApp(),
    saveLocale: true,
    supportedLocales: const [Locale('en', 'US')],
    fallbackLocale: const Locale('en', 'US'),
    path: 'assets/translations'
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    getIt.get<Dio>().interceptors.add(LogInterceptor(
      responseHeader: false,
      requestBody: true,
      responseBody: true
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProfileBloc())
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () {
          return MaterialApp(
            title: 'Goplaciz',
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            home: const AppWidget(),
            builder: (context, child) {
              ScreenUtil.setContext(context);

              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              );
            },
          );
        },
      ),
    );
  }
}
