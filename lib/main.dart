import 'package:aspage/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login/authentication/login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple, textSelectionColor: Colors.amber),
        home: FutureBuilder<FirebaseUser>(
            future: FirebaseAuth.instance.currentUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                FirebaseUser user = snapshot.data;
                return Home(id: user.uid);
              } else {
                return LoginScreen();
              }
            }
        ),
      );
  }
}