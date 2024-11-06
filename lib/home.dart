import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'ABA',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle logout action
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Tina"),
                accountEmail: Text("Tina@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact Us"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Two columns
          padding: EdgeInsets.all(8.0),
          children: List.generate(5, (index) {
            IconData? iconData;
            String text = '';
            Color bgColor; // Background color variable

            switch (index) {
              case 0:
                iconData = Icons.person;
                text = 'User';
                bgColor = Colors.blue; // Blue color
                break;
              case 1:
                iconData = Icons.contact_mail;
                text = 'Contact Us';
                bgColor = Colors.red; // Red color
                break;
              case 2:
                iconData = Icons.group;
                text = 'Group';
                bgColor = Colors.yellow; // Yellow color
                break;
              case 3:
                iconData = Icons.document_scanner;
                text = 'Document';
                bgColor = Colors.purple; // Purple color
                break;
              case 4:
                iconData = Icons.archive;
                text = 'Archive';
                bgColor = Colors.green; // Green color
                break;
              default:
                bgColor = Colors.grey; // Default color if needed
            }

            return Container(
              color: bgColor, // Set the full background color
              margin: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(iconData, size: 50, color: Colors.white), // Icon with white color
              SizedBox(height: 10),
              Text(text, style: TextStyle(color: Colors.white, fontSize: 18)), // Text with white color
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
