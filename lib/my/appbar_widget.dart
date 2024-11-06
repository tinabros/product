import 'package:flutter/material.dart';
import 'package:lesson/my/login_page.dart';

PreferredSizeWidget myAppBar(String title) {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    title: Text(
      title,
      style: const TextStyle(
        fontFamily: 'Arial',
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.chat_rounded),
        tooltip: 'Message',
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.edit_notifications_rounded),
        tooltip: 'Notification',
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.qr_code_rounded),
        tooltip: 'QR Code',
        onPressed: () {},
      ),
    ],
  );
}

PreferredSizeWidget myAppBar2(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.onSurface,
    iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
    surfaceTintColor: Colors.transparent,
    title: Center(
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Arial',
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: TextButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));

          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    ],
  );
}
