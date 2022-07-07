import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inscrire/moduls/Login/LoginPage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.cyan,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
