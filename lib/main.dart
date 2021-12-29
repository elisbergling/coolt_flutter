import 'package:coolt_flutter/screens/logout_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'screens/fondation_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coolt Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: FondationScreen.routeName,
      routes: {
          FondationScreen.routeName: (context) => FondationScreen(),
          LogoutScreen.routeName: (context) => LogoutScreen(),
      },
      home: FondationScreen(),
    );
  }
}
