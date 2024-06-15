import 'package:flutter/material.dart';

Future<void> showCustomDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => _CustomDialog(),
  );
}

class _CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(15),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: SizedBox(
            width: 360,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ),
                const Text(
                  'Felicitaciones',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.green,
                  size: 100,
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Ullamco fugiat nulla reprehenderit nostrud ea ullamco commodo sit ex irure fugiat sit.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
