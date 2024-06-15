import 'package:flutter/material.dart';

import '/routes/routes.dart';
import '/pages/login_page.dart';
import '/pages/counter_page.dart';
import '/pages/splash_page.dart';
import '/pages/color_picker.dart';
import '/pages/menu_page.dart';
import '/pages/dialogs_page.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (_) => const SplashPage(),
    Routes.home: (_) => const MenuPage(),
    Routes.counter: (_) => const CounterPage(),
    Routes.login: (context) {
      final email = getArguments<String>(context);
      return LoginPage(
        email: email,
      );
    },
    Routes.colorPicker: (_) => const ColorPicker(),
    Routes.dialogs: (_) => const DialogsPage(),
  };
}
