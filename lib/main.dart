import 'package:flutter/material.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chat_app/screens/auth_screen.dart';

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
      title: 'FlutterChat',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.deepPurple,
        ),

        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      ),
      home: const AuthScreen(),
    );
  }
}
