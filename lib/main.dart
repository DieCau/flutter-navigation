import 'package:flutter/material.dart';
import 'package:navigation_flutter/routes/routes.dart';

import '/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 22, 16, 33)),
        // useMaterial3: true,
      ),
      initialRoute: Routes.initialRoute,
      routes: appRoutes,
    );
  }
}
