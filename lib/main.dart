import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shipment_tracking/auth_wrapper.dart';
import 'package:shipment_tracking/firebase_options.dart';
import 'package:shipment_tracking/screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shipment Tracker',
      theme: myTheme(),
      home: const HomePage(),
    );
  }

  ThemeData myTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255)),
      useMaterial3: true,
    );
  }
}
