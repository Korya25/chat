import 'package:chat/core/services/auth/auth_google_services.dart';
import 'package:chat/core/services/auth/auth_services.dart';
import 'package:chat/core/services/firebase/firebase_options.dart';
import 'package:chat/features/auth/cubits/auth_cubits.dart';
import 'package:chat/features/auth/screens/main/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(
            authServices: AuthServices(),
            googleServices: AuthGoogleServices(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AuthGate(),
      ),
    );
  }
}
