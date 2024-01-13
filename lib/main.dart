import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/global_variable.dart';
import 'package:shopping_app/home_page.dart';
import 'package:shopping_app/product_details_page.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Change this color to the desired color
        statusBarIconBrightness:
            Brightness.light, // Use Brightness.dark for dark icons
      ),
    );
    return MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(254, 206, 21, 1)),
            textTheme: const TextTheme(
                titleMedium:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        home: HomePage());
  }
}
