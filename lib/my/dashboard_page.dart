import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lesson/my/appbar_widget.dart';
import 'package:lesson/my/drawer_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 4;
    Color textColor = Theme.of(context).colorScheme.onSurfaceVariant;

    return Scaffold(
      appBar: myAppBar2(context, "MIRT Chair dashboard"),
      drawer: myDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          child: Column(
            children: [
              Container(
                color: Theme.of(context).colorScheme.outlineVariant,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ACTIVE MIRT",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 440,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    label: Text("MIRT CHAIR ACTIONS"),
                    icon: Icon(Icons.build),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fire Event",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "11:30 am 10/10/2016",
                            style: TextStyle(
                              color: textColor.withOpacity(0.6),
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Theme.of(context).primaryColor),
                              Text(
                                "10",
                                style: TextStyle(color: textColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0, left: 12, bottom: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Building IT department",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
                                  ),
                                  Text(
                                    "Pnmary Emergency Operaton Center",
                                    style: TextStyle(color: textColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
                              backgroundColor: Theme.of(context).colorScheme.error,
                            ),
                            label: Text(
                              "CLOSE MIRT",
                              style: TextStyle(color: Theme.of(context).colorScheme.surfaceVariant, fontSize: 12),
                            ),
                            icon: Icon(Icons.close, color: Theme.of(context).colorScheme.surfaceVariant),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildExpansionTile(context, "Joe Doe", null),
              _buildExpansionTile(context, "Michael Lockwood", "11.30 am, 10/10/16"),
              _buildExpansionTile(context, "Joe Doe", "11.30 am, 10/10/16"),
              _buildExpansionTile(context, "Joe Doe", "11.30 am, 10/10/16"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpansionTile(BuildContext context, String name, String? status) {
    Color textColor = Theme.of(context).colorScheme.onSurfaceVariant;

    return ExpansionTile(
      title: Row(
        children: [
          Text(name, style: TextStyle(color: textColor, fontWeight: FontWeight.w600)),
          Text(
            status == null ? "" : " Yet to acknowledge receipt!",
            style: TextStyle(fontSize: 14, color: textColor.withOpacity(0.7)),
          ),
        ],
      ),
      subtitle: status == null
          ? Text('Did not respond in time - declined', style: TextStyle(color: Theme.of(context).colorScheme.error))
          : Text('Notified at ' + status, style: TextStyle(fontSize: 14, color: textColor.withOpacity(0.7))),
      children: <Widget>[
        ListTile(title: Text('Notification Details Here', style: TextStyle(fontSize: 14, color: textColor))),
      ],
    );
  }
}
