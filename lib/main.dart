import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';

import 'package:shopping_app/home_page.dart';

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
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Change this color to the desired color
        statusBarIconBrightness:
            Brightness.light, // Use Brightness.dark for dark icons
      ),
    );
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
          title: 'Shopping App',
          theme: ThemeData(
              fontFamily: 'Lato',
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromRGBO(254, 206, 21, 1)),
              textTheme: const TextTheme(
                  titleMedium:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
          home: HomePage()),
    );
  }
}
