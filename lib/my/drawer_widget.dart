import 'package:flutter/material.dart';
import 'package:lesson/my/dashboard_page.dart';
import 'package:lesson/my/login_page.dart';

Widget myDrawer(BuildContext context) {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon = MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.onSurface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    child: Column(
      children: [
        _buildDrawerHeader(context),
        _buildDrawerItem(context, Icons.home_rounded, "Dashboard", DashboardPage()),
        _buildDrawerItem(context, Icons.person_rounded, "Profile", null),
        _buildDrawerItem(context, Icons.contact_mail_rounded, "Contact Us", null),
        _buildDrawerItem(context, Icons.settings_rounded, "Settings", null),
        _buildDrawerItem(context, Icons.logout_rounded, "Log out", LoginPage()),
        Spacer(),
        Divider(),
      ],
    ),
  );
}

Widget _buildDrawerHeader(BuildContext context) {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(),
    accountName: Text(
      "Tina",
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    ),
    accountEmail: Text(
      "tinabros@gmail.com",
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    ),
    currentAccountPicture: const CircleAvatar(
      backgroundImage: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT75N_tftPWlyK4Q5-QDx_QZtLFJAG7JiDM3A&s",
      ),
    ),
  );
}

Widget _buildDrawerItem(BuildContext context, IconData icon, String title, Widget? destination) {
  return ListTile(
    leading: Icon(
      icon,
      color: Theme.of(context).colorScheme.onPrimary,
    ),
    title: Text(
      title,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    ),
    onTap: () {
      if (destination != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      } else {
        print('No destination provided for $title');
      }
    },
  );
}
