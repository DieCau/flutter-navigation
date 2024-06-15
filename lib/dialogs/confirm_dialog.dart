import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  String title = '',
  bool dismissble = true,
}) async {
  final result = await showDialog<bool>(
      context: context,
      barrierColor: Colors.grey.withOpacity(0.4),
      // barrierDismissible: false,
      builder: (context) => PopScope(
            canPop: dismissble,
            child: _DialogContent(
              title: title,
            ),
          ));
  return result ?? false;
}

class _DialogContent extends StatelessWidget {
  final String title;

  const _DialogContent({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: const Text(
            'Si',
            style: TextStyle(color: Colors.green),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'No',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}
