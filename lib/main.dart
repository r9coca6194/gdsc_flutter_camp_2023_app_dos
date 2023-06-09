import 'package:gdsc_flutter_camp_2023_app_dos/src/presentation/screens/login_screen.dart';
import 'package:gdsc_flutter_camp_2023_app_dos/src/presentation/screens/register_screen.dart';
import 'package:gdsc_flutter_camp_2023_app_dos/src/presentation/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomeScren(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
      },
    );
  }
}
