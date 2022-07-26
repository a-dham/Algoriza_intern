import 'package:flutter/material.dart';
import 'package:task_1/Presentation/task1/Auth/Login/login_screen.dart';
import 'package:task_1/Presentation/task1/Auth/signUp/sign_up_screen.dart';
import 'package:task_1/Presentation/task1/onboarding/on_boarding.dart';
import 'package:task_1/Presentation/todoTask2/pages/addTask/add_task.dart';
import 'package:task_1/Presentation/todoTask2/pages/home/home.dart';
import 'package:task_1/core/utils/constant.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {
            case onBoarding:
              return const OnBoarding();
            case signUp:
              return const SignUpScreen();
            case login:
              return const LoginScreen();
            case home:
              return const Home();
            case addTask:
              return AddTask();
          }
          return const Home();
        });
  }
}
