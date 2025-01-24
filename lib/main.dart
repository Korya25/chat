import 'package:chat_ap_p/core/routing/app_router.dart';
import 'package:chat_ap_p/core/routing/routes.dart';
import 'package:chat_ap_p/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (BuildContext context, thememode) {
          return MaterialApp(
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: Routes.introduce_1,
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            themeMode: thememode,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
