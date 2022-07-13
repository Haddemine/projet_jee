import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inscrire/api/api.dart';
import 'package:inscrire/moduls/Login/LoginPage.dart';
import 'package:provider/provider.dart';
import 'package:inscrire/api/api.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>FilierProvider(),
      child: new MaterialApp(
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
      ),
    );
  }
}
