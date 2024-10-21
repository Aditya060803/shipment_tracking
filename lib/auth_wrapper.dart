import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipment_tracking/screens/auth/login/login_page.dart';
import 'package:shipment_tracking/screens/home_page.dart';
import 'package:shipment_tracking/services/firebase/authentication.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: Provider.of<AuthService>(context).authState,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            // User is authenticated
            return const HomePage();
          } else {
            // User is not authenticated
            return const LoginPage();
          }
        }
        // Show a loading indicator while waiting for the connection
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
