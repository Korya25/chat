import 'package:chat/constant/app_tex_style.dart';
import 'package:chat/core/services/auth/auth_google_services.dart';
import 'package:chat/core/services/auth/auth_services.dart';
import 'package:chat/features/auth/cubits/auth_cubits.dart';
import 'package:chat/features/auth/screens/forget_pass/forget_pass_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(
          authServices: AuthServices(),
          googleServices:
              AuthGoogleServices()), // تأكد من أنك تقوم بإنشاء الـ Cubit هنا
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 45, 45, 49),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Forget Password',
            style: AppTextStyle.appBar,
          ),
        ),
        body: const ForgetPassForm(),
      ),
    );
  }
}
