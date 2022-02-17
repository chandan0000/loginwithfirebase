import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/screens/home_screen.dart';
import 'package:loginwithfirebase/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Email and Password Login',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginScreen());
  }
}
