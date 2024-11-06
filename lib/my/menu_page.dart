import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lesson/my/appbar_widget.dart';
import 'package:lesson/my/drawer_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // mean current size of screen divide by 200
    //example cur 800 / 200 = 4
    final currentCount = (MediaQuery.of(context).size.width ~/ 180).toInt();
    const minCount = 2;

    return Scaffold(
      appBar: myAppBar2(context, "Menu"),
      drawer: myDrawer(context),
      body: Container(
        alignment: Alignment.topCenter,
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: max(currentCount, minCount),
            padding: const EdgeInsets.all(8.0),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              _buildMenuItem(context, Icons.person, 'Users'),
              _buildMenuItem(context, Icons.contact_page, 'Contact lists'),
              _buildMenuItem(context, Icons.group, 'Groups and associations'),
              _buildMenuItem(context, Icons.description, 'Documents'),
              _buildMenuItem(context, Icons.list_alt, 'Incident types and response guidelines'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData iconData, String text) {
    const double borderRadius = 5.0;
    return Card(
      elevation: 5,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: () {},
        child: LayoutBuilder(
          builder: (context, constraints) {
            double iconSize = constraints.maxWidth * 0.4; //40% of card width
            double fontSize = constraints.maxWidth * 0.08; //8% of card width

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: Theme.of(context).colorScheme.primary,
                  size: iconSize,
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Text(
                    textAlign: TextAlign.center,
                    text,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
