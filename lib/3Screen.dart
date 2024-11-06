import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Menu',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          // Ensure the title is centered
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.yellow, // Set the drawer icon color to yellow
          ),
          actions: [
            IconButton(
              color: Colors.yellow,
              icon: Icon(Icons.logout),
              onPressed: () {
                // Handle logout
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.yellow, // Set the drawer background to yellow
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Zorin"),
                  accountEmail: Text("Zorin@mail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
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
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                // Handle navigation to users
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 50),
                    SizedBox(height: 10),
                    Text('Users', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle navigation to contact lists
              },
              child: Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.contact_phone, size: 50),
                    SizedBox(height: 10),
                    Text('Contact lists', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle navigation to groups and associations
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.groups, size: 50),
                    SizedBox(height: 10),
                    Text('Groups and associations',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle navigation to documents
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.file_copy, size: 50),
                    SizedBox(height: 10),
                    Text('Documents', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle navigation to incident types
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.warning, size: 50),
                    SizedBox(height: 10),
                    Text('Incident types and Response guildline',
                        style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
