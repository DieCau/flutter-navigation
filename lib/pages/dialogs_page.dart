import 'package:flutter/material.dart';
import '/dialogs/bottom_sheet_dialog.dart';
import '/dialogs/confirm_dialog.dart';
import '/dialogs/custom_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Mostrar Cuadro de Dialogo'),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => const DialogContent(),
              );
            },
          ),
          ListTile(
            title: const Text('Mostrar Cuadro de Confirmacion'),
            onTap: () async {
              await showConfirmDialog(
                context,
                title: 'Esta seguro?',
                dismissble: false,
              );
            },
          ),
          ListTile(
            title: const Text('Mostrar Dialogo Estilo de Hoja'),
            onTap: () {
              showBottomSheetDialog(context);
            },
          ),
          ListTile(
            title: const Text('Mostrar Dialogo Personalizado'),
            onTap: () {
              showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('Mi Dialogo!'),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }
}
