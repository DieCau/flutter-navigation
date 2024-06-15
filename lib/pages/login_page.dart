import 'package:flutter/material.dart';
import 'package:navigation_flutter/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  final String email;
  
  const LoginPage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    // final modalRoute = ModalRoute.of(context)!;
    // final email = modalRoute.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const ProfilePage(),
              );
              Navigator.push(context, route);
            },
            child: Text('LOGIN PAGE $email'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) => Container(
                height: 70,
                color: Colors.primaries[index],
              ),
              itemCount: Colors.primaries.length,
            ),
          ),
        ],
      )),
    );
  }
}
