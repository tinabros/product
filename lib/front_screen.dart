import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Set the background color
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding to make it look nice
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo and title at the top
            Image.network(
              'https://pbs.twimg.com/profile_images/436790657227554816/ZlJ_ngr8_400x400.png',
              height: 100,
            ),
            SizedBox(height: 20), // Add some spacing
            Text(
              'Legend Cinema\nEnjoy with Movie',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40), // Add space before the form fields

            // Email input field
            TextField(
              decoration: InputDecoration(
                hintText: 'user@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Space between email and password fields

            // Password input field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30), // Space before the login button

            // Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('LOGIN'),
              ),
            ),
            SizedBox(height: 10), // Space before the forgot password text

            // Forgot password text
            TextButton(
              onPressed: () {
                // Handle forgot password action
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Legend Cinema'),
          actions: [
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                // Handle chat button press
                print('Chat icon pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications button press
                print('Notifications icon pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.qr_code),
              onPressed: () {
                // Handle QR code button press
                print('QR icon pressed');
              },
            ),
          ],
        ),
        drawer: const Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Seiha"),
              accountEmail: Text("sdachyumreach@mail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    "https://eteft.com/cdn/shop/files/2-6661c20c6c2d1.png?v=1719717143"),
              ),
              decoration: BoxDecoration(
                color: Colors.red, // Change this to any color you want
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
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About app"),
            ),
          ],
        )),
        body: Column(
          children: [
            // Horizontal scrolling section (Top)
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/e4996ca9-03d4-4a65-8374-10ee99c5be23.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/37c1b050-709f-40fe-b374-23c2035177bb.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/2a853f81-f008-4022-9732-7491fa0de572.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/42e9253a-60af-443a-81f3-7679aa0bb0bc.jpeg",
                      width: 400,
                    ),
                  ),
                ],
              ),
            ),

            // Vertical scrolling section (Below)
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/e4996ca9-03d4-4a65-8374-10ee99c5be23.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/37c1b050-709f-40fe-b374-23c2035177bb.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/2a853f81-f008-4022-9732-7491fa0de572.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/8f5fc89b-a759-42af-881d-8c795d85e6ec.jpeg",
                        width: 400,
                      ),
                    ),
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
