import 'package:flutter/material.dart';

import '/routes/routes.dart';

class PageData {
  final String name;
  final String label;
  final Object? arguments;
  final void Function(Object?)? onResult;

  const PageData({
    required this.name,
    required this.label,
    this.arguments,
    this.onResult,
  });
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  late final List<PageData> _pages;

  @override
  void initState() {
    _pages = <PageData>[
      const PageData(
        name: Routes.login,
        label: 'Ir a Login',
        arguments: 'test@test.com',
      ),
      const PageData(
        name: Routes.counter,
        label: 'Ir a Counter',
      ),
      PageData(
        name: Routes.colorPicker,
        label: 'Ir a picker Color',
        onResult: (result) {
          if (result is Color) {
            _color = result;
            setState(() {});
          }
        },
      ),
      const PageData(
        name: Routes.dialogs,
        label: 'Ir a Dialogs',
      ),
    ];
    super.initState();
  }

  // 1ª forma: de pasar datos a una page mientras estamos navegando
  // final route = MaterialPageRoute(
  //   builder: (_) => LoginPage(
  //     email: email,
  //   ),
  // );

  // 2ª forma: de pasar datos a una page mientras estamos navegando
  // final route = MaterialPageRoute(
  //   settings: RouteSettings(
  //     arguments: faker.internet.email(),
  //   ),
  //   builder: (_) => const LoginPage(),
  // );

  // Navigator.push(context, route);
  // Navigator.pushReplacement(context, route);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final data = _pages[index];
          return ListTile(
            title: Text(data.label),
            onTap: () async {
              final result = await Navigator.pushNamed(
                context,
                data.name,
                arguments: data.arguments,
              );
              if (data.onResult != null) {
                data.onResult!(result);                
              }
            },
          );
        },
        itemCount: _pages.length,
      ),
    );
  }
}
