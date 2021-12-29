import 'package:coolt_flutter/constants/colors.dart';
import 'package:coolt_flutter/screens/fondation_screen.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  static const routeName = '/log-out';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed(FondationScreen.routeName),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(20),
            ),
          ),
          child: Text('Sign in'),
        ),
      ),
    );
  }
}
