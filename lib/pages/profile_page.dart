import 'package:flutter/material.dart';
import '/routes/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.initialRoute,
              (route) => false,
            );
          },
          child: const Text('LOG OUT'),
        ),
      ),
    );
  }
}
