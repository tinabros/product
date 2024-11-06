import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.yellow, // Set the drawer icon color to yellow
          ),
          title: Text('MRT Chair Dashboard',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
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
        drawer: const Drawer(
            backgroundColor: Colors.black,
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
            )),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                // Handle navigation to other features
              },
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to menu screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  // Set background color to black
                  padding: EdgeInsets.symmetric(horizontal: 180, vertical: 15),
                  // Add padding for size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5), // Add slight rounding on corners
                    // side: BorderSide(color: Colors.orange, width: 3), // Orange border
                  ),
                ),
                child: Text(
                  'ACTIVE MIRT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Make text bold
                    fontSize: 10, // Set font size
                    color: Colors.black, // Set text color to white
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle navigation to other features
              },
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to menu screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  // Set background color to yellow
                  padding: EdgeInsets.symmetric(horizontal: 180, vertical: 15),
                  // Add padding for size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5), // Add slight rounding on corners
                    // side: BorderSide(color: Colors.orange, width: 3), // Orange border
                  ),
                ),
                child: Text(
                  'MIRT CHAIR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Make text bold
                    fontSize: 10, // Set font size
                    color: Colors.black, // Set text color to black
                  ),
                  overflow: TextOverflow.ellipsis,
                  // Add ellipsis if text overflows
                  maxLines: 1, // Ensure text stays on one line
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text('Fire Event',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text('Building 4 IT Department'),
                    subtitle: Text('Primary Emergency Operation Centre'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Handle event close
                      },
                      child: Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(16),
                        child: Text('CLOSE MIRT',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.person),
                    // This adds a user icon at the front
                    title: Text('John Doe'),
                    subtitle: Text('Not acknowledged in time - Declined',
                        style: TextStyle(color: Colors.red)),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Michael Lockwood'),
                    subtitle: Text('Not acknowledged receipt'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('John Doe'),
                    subtitle: Text('Not acknowledged in time - Declined'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('John Doe'),
                    subtitle: Text('Not acknowledged in time - Declined'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}