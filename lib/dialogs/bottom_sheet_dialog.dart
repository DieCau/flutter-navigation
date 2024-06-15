import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    // enableDrag: false,
    // isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.elliptical(20, 10),
        topRight: Radius.elliptical(20, 10),
      ),
    ),
    // constraints: const BoxConstraints(maxWidth: 500),
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.photo),
            title: const Text('Fotos'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.music_note),
            title: const Text('Musica'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.videocam_sharp),
            title: const Text('Videos'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.share),
            title: const Text('Compartir'),
          ),
        ],
      ),
    ),
  );
}
