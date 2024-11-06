import 'package:flutter/material.dart';
import 'package:lesson/my/menu_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 4;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 80),
                Image.network(
                  "https://jmeducationgroup.com/wp-content/uploads/2022/08/unsw-logo-01.png",
                  width: 220,
                ),
                const SizedBox(height: 110),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    children: [
                      Text(
                        "MAJOR INCIDENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryFixed, fontSize: 36),
                      ),
                      Text(
                        "RESPONSE APPLICATION",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryFixed, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 70),
                SizedBox(
                  width: 440,
                  child: TextField(
                    decoration: _buildInputDecoration(context, borderRadius, 'Enter Your Email'),
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 440,
                  child: TextField(
                    decoration: _buildInputDecoration(context, borderRadius, 'Enter Your Password'),
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 440,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MenuPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
                      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryFixed, fontSize: 14),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context, double borderRadius, String hintText) {
    return InputDecoration(
      fillColor: Theme.of(context).colorScheme.onPrimary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
        color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
      ),
    );
  }
}
